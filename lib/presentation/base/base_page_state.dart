import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/configs/configs.dart';
import '../../core/mixins/log_mixin.dart';
import '../../domain/entities/user.dart';
import '../common_blocs/app/app_bloc.dart';
import '../common_widgets/loading.dart';
import 'bloc/base_bloc.dart';
import 'bloc/common/common_bloc.dart';

abstract class BasePageState<P extends StatefulWidget, B extends BaseBloc>
    extends State<P> with LogMixin {
  late final CommonBloc commonBloc;
  late final B bloc;

  late Future<dynamic> _initBLocsFeature;

  // only get currentUser when has been logged in
  User get _currentUser => getIt.get<AppBloc>().state.currentUser!;

  @protected
  User get currentUser => _currentUser;

  bool get useLoadingIndicator => false;

  @mustCallSuper
  @override
  void initState() {
    super.initState();
    _initBLocsFeature = _initBlocs();
  }

  void onBlocInitialed() {}

  Future _initBlocs() async {
    commonBloc = getIt.get<CommonBloc>();

    try {
      bloc = getIt.get<B>();
    } on AssertionError catch (_) {
      bloc = await getIt.getAsync<B>();
    } catch (e) {
      logError(e);
    }

    bloc.commonBloc = commonBloc;

    onBlocInitialed();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: _initBLocsFeature,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return buildCenterLoading();
        }

        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => bloc),
            BlocProvider(create: (_) => commonBloc),
          ],
          child: buildPageListeners(
            child: !useLoadingIndicator
                ? buildPage(context)
                : Stack(
                    children: [
                      buildPage(context),
                      BlocBuilder<CommonBloc, CommonState>(
                        buildWhen: (previous, current) =>
                            previous.isLoading != current.isLoading,
                        builder: (context, state) => Visibility(
                          visible: state.isLoading,
                          child: buildPageLoading(),
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }

  Widget buildPageListeners({required Widget child}) => child;

  Widget buildPageLoading() =>
      const Positioned.fill(child: Center(child: AppDefaultLoading()));

  Widget buildCenterLoading() => const Center(child: AppDefaultLoading());

  Widget buildPage(BuildContext context);
}
