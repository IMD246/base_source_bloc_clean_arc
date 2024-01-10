part of 'add_product_page.dart';

class _ProfilePhotoDecorationTexts extends StatelessWidget {
  const _ProfilePhotoDecorationTexts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.l10n.add_product__title,
          style: AppTextStyles.headlineSmall.bold,
        ),
        AppSpacing.gapH8,
        Text(
          context.l10n.add_product__subtitle,
          style: AppTextStyles.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _NextButton extends StatelessWidget {
  const _NextButton();

  void _onContinueButtonPressed(BuildContext context) {
    context.read<AddProductBloc>().add(const NextSubmitted());
  }

  @override
  Widget build(BuildContext context) {
    return AppButton.primary(
      width: double.infinity,
      height: Sizes.s48,
      label: context.l10n.button__next.toUpperCase(),
      onPressed: () => _onContinueButtonPressed(context),
    );
  }
}

class _AddProductForm extends StatelessWidget {
  const _AddProductForm();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildProductNameField(context),
          AppSpacing.gapH12,
          _buildProductDescriptionField(context),
          AppSpacing.gapH12,
          _buildProductCategoryField(context),
          AppSpacing.gapH12,
          _buildProductStatusField(context),
          AppSpacing.gapH12,
        ],
      ),
    );
  }

  Widget _buildProductNameField(BuildContext context) {
    return BlocBuilder<AddProductBloc, AddProductState>(
      buildWhen: (previous, current) =>
          previous.productName != current.productName || previous.submitCount != current.submitCount,
      builder: (context, state) {
        return AppTextField(
          hintText: context.l10n.field__product_name,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.productName.isEmpty
                  ? context.l10n.field__product_name_required
                  : null,
          onChanged: (value) => context.read<AddProductBloc>().add(ProductNameChanged(value)),
        );
      },
    );
  }

  Widget _buildProductDescriptionField(BuildContext context) {
    return BlocBuilder<AddProductBloc, AddProductState>(
      buildWhen: (previous, current) =>
          previous.productDescription != current.productDescription || previous.submitCount != current.submitCount,
      builder: (context, state) {
        return AppTextField(
          hintText: context.l10n.field__product_description,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          minLines: 2,
          maxLines: 10,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.productName.isEmpty
                  ? context.l10n.field__required
                  : null,
          onChanged: (value) => context.read<AddProductBloc>().add(ProductDescriptionChanged(value)),
        );
      },
    );
  }

  Widget _buildProductCategoryField(BuildContext context) {
    return BlocBuilder<AddProductBloc, AddProductState>(
      buildWhen: (previous, current) =>
          previous.productCategory != current.productCategory || previous.submitCount != current.submitCount,
      builder: (context, state) {
        return DropdownInput<ProductType>(
          value: state.productCategory,
          items: ProductType.values
              .map(
                (e) => DropdownItem<ProductType>(e.displayName, e),
              )
              .toList(),
          // labelText: context.l10n.field__current_country,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.productCategory == null
                  ? context.l10n.field__category_required
                  : null,

          placeholder: context.l10n.field__category,
          isRequired: true,
          onChanged: (value) {
            context.read<AddProductBloc>().add(ProductCategoryChanged(value));
          },
          markRequired: true,
        );
      },
    );
  }

  Widget _buildProductStatusField(BuildContext context) {
    return BlocBuilder<AddProductBloc, AddProductState>(
      buildWhen: (previous, current) =>
          previous.productCategory != current.productCategory ||
          previous.selectedProductStatus != current.selectedProductStatus ||
          previous.submitCount != current.submitCount,
      builder: (context, state) {
        if (state.productCategory == null) {
          return const SizedBox.shrink();
        }

        return DropdownInput<ProductStatus>(
          value: state.selectedProductStatus,
          items: state.productStatusList
              .map(
                (e) => DropdownItem<ProductStatus>(e.companyProductStatus ?? '', e),
              )
              .toList(),
          // labelText: context.l10n.field__current_country,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.productCategory == null
                  ? context.l10n.field__required
                  : null,

          placeholder: context.l10n.field__product_status,
          isRequired: true,
          onChanged: (value) {
            context.read<AddProductBloc>().add(ProductStatusChanged(value));
          },
          markRequired: true,
        );
      },
    );
  }
}
