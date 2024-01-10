import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/configs/di/di.dart';
import '../../../base/bloc/common/common_bloc.dart';
import '../../../common_blocs/app/app_bloc.dart';
import '../../../common_widgets/common_widgets.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(context.read<AppBloc>().state.currentUser?.toString() ?? 'null'),
          AppButton.primary(
            width: double.infinity,
            label: 'Log out',
            onPressed: () async {
              getIt.get<CommonBloc>().add(const ForceLogoutButtonPressed());
            },
          ),
        ],
      ),
    );
  }
}
