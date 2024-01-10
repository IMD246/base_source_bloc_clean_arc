import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../domain/entities/entities.dart';
import '../../../base/base_page_state.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../common_widgets/dropdown_input/dropdown_input.dart';
import '../../../resource/resource.dart';
import 'bloc/add_product_bloc.dart';

part 'add_product_widgets.dart';

@RoutePage()
class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends BasePageState<AddProductPage, AddProductBloc> {
  @override
  bool get useLoadingIndicator => true;

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      hideKeyboardWhenTouchOutside: true,
      appBar: CommonAppBar(),
      body: ListView(
        padding: AppSpacing.edgeInsetsH16,
        physics: const ClampingScrollPhysics(),
        children: const [
          _ProfilePhotoDecorationTexts(),
          AppSpacing.gapH16,
          _AddProductForm(),
          AppSpacing.gapH16,
          _NextButton(),
          AppSpacing.gapH56,
        ],
      ),
    );
  }
}
