part of 'company_information_page.dart';

class _CompanyInformationDecorationTexts extends StatelessWidget {
  const _CompanyInformationDecorationTexts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.l10n.company_information__title,
          style: AppTextStyles.headlineSmall.bold,
        ),
        AppSpacing.gapH8,
        Text(
          context.l10n.company_information__subtitle,
          style: AppTextStyles.bodyLarge,
        ),
      ],
    );
  }
}

class _CompanyInformationForm extends StatelessWidget {
  _CompanyInformationForm();
  final jobTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCompanyField(context),
        AppSpacing.gapH12,
        BlocBuilder<CompanyInformationBloc, CompanyInformationState>(
          buildWhen: (previous, current) =>
              previous.selectedCompany != current.selectedCompany ||
              previous.submitCount != current.submitCount ||
              previous.companyList != current.companyList,
          builder: (context, state) {
            if (state.selectedCompany == null) {
              return const SizedBox.shrink();
            }

            return Column(
              children: [
                _buildYourJobTitleField(context),
                AppSpacing.gapH12,
                _buildLevelOfInvolvementField(context),
                AppSpacing.gapH12,
                _buildStartWorkingDateField(context),
                AppSpacing.gapH12,
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildCompanyField(BuildContext context) {
    return BlocBuilder<CompanyInformationBloc, CompanyInformationState>(
      buildWhen: (previous, current) =>
          previous.selectedCompany != current.selectedCompany ||
          previous.submitCount != current.submitCount ||
          previous.companyList != current.companyList,
      builder: (context, state) {
        return DropdownInput<CompanyProfile>(
          value: state.selectedCompany,
          items: state.companyList
              .map(
                (e) => DropdownItem<CompanyProfile>(e.companyName ?? '', e),
              )
              .toList(),
          // labelText: context.l10n.field__current_country,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.selectedCompany == null
                  ? context.l10n.field__company_name_required
                  : null,

          placeholder: context.l10n.field__company_name,
          isRequired: true,
          hideSelectedItem: true,
          onChanged: (value) {
            context.read<CompanyInformationBloc>().add(CompanyChanged(value));
          },
          markRequired: true,
          bottomItem: Row(
            children: <Widget>[
              Text(
                context.l10n.company_information__cant_find_your_company,
                style: AppTextStyles.bodyMedium,
              ),
              AppSpacing.gapW4,
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  context.replaceNamed(RouteList.onboardingCreateCompany);
                },
                child: Text(
                  context.l10n.company_information__add_it_now,
                  style: AppTextStyles.bodyMedium.toColor(AppColors.blue),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildYourJobTitleField(BuildContext context) {
    return BlocBuilder<CompanyInformationBloc, CompanyInformationState>(
      buildWhen: (previous, current) =>
          previous.jobTitle != current.jobTitle || previous.submitCount != current.submitCount,
      builder: (context, state) {
        jobTitleController.text = state.jobTitle;

        return AppTextField(
          hintText: context.l10n.field__your_job_title,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          controller: jobTitleController,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.jobTitle.isEmpty
                  ? context.l10n.field__your_job_title_required
                  : null,
          onChanged: (value) => context.read<CompanyInformationBloc>().add(JobTitleChanged(value)),
        );
      },
    );
  }

  Widget _buildLevelOfInvolvementField(BuildContext context) {
    return BlocBuilder<CompanyInformationBloc, CompanyInformationState>(
      buildWhen: (previous, current) =>
          previous.levelOfInvolvement != current.levelOfInvolvement ||
          previous.submitCount != current.submitCount ||
          previous.companyList != current.companyList,
      builder: (context, state) {
        return DropdownInput<LevelOfInvolvement>(
          value: state.levelOfInvolvement,
          items: LevelOfInvolvement.values
              .map(
                (e) => DropdownItem<LevelOfInvolvement>(e.displayName, e),
              )
              .toList(),
          errorText: !state.hadBeenSubmitted
              ? null
              : state.levelOfInvolvement == null
                  ? context.l10n.field__level_of_involvement_required
                  : null,
          placeholder: context.l10n.field__level_of_involvement,
          isRequired: true,
          onChanged: (value) {
            context.read<CompanyInformationBloc>().add(LevelOfInvolvementChanged(value));
          },
          markRequired: true,
        );
      },
    );
  }

  Widget _buildStartWorkingDateField(BuildContext context) {
    return BlocBuilder<CompanyInformationBloc, CompanyInformationState>(
      buildWhen: (previous, current) =>
          previous.startWorkingDate != current.startWorkingDate ||
          previous.submitCount != current.submitCount ||
          previous.companyList != current.companyList,
      builder: (context, state) {
        return DatePickerInput(
          placeholder: context.l10n.field__start_working_date,
          value: ParseUtils.tryParseLocal(state.startWorkingDate),
          errorText: !state.hadBeenSubmitted
              ? null
              : state.startWorkingDate.isEmpty
                  ? context.l10n.field__level_of_involvement_required
                  : null,
          onChanged: (value) {
            if (value != null) {
              context.read<CompanyInformationBloc>().add(
                    StartWorkingDateChanged(
                      ParseUtils.dateTimeToServerString(value),
                    ),
                  );
            }
          },
        );
      },
    );
  }
}

class _ContinueButton extends StatelessWidget {
  const _ContinueButton();

  void _onContinueButtonPressed(BuildContext context) {
    context.read<CompanyInformationBloc>().add(const ContinueButtonPressed());
  }

  @override
  Widget build(BuildContext context) {
    return AppButton.primary(
      width: double.infinity,
      height: Sizes.s48,
      label: context.l10n.button__continue.toUpperCase(),
      onPressed: () => _onContinueButtonPressed(context),
    );
  }
}
