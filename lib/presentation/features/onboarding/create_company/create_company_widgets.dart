part of 'create_company_page.dart';

class _ProfilePhotoDecorationTexts extends StatelessWidget {
  const _ProfilePhotoDecorationTexts();

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

class _ContinueButton extends StatelessWidget {
  const _ContinueButton();

  void _onContinuePressed(BuildContext context) {
    context.read<CreateCompanyBloc>().add(
          const ContinueButtonPressed(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return AppButton.primary(
      width: double.infinity,
      height: Sizes.s48,
      label: context.l10n.button__continue.toUpperCase(),
      onPressed: () => _onContinuePressed(context),
    );
  }
}

class _CreateCompanyForm extends StatelessWidget {
  const _CreateCompanyForm();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildCompanyNameField(context),
        AppSpacing.gapH12,
        _buildCompanyLogoField(context),
        AppSpacing.gapH12,
        _buildIndustryField(context),
        AppSpacing.gapH12,
        _buildCompanyTypeField(context),
        AppSpacing.gapH12,
        _buildOrganisationField(context),
        AppSpacing.gapH12,
        _buildDateRegisteredField(context),
        AppSpacing.gapH12,
        _buildNotRegisteredYetField(context),
        AppSpacing.gapH12,
        _buildWebsiteField(context),
        AppSpacing.gapH12,
        _buildContactNumberField(context),
        AppSpacing.gapH12,
        _buildOfficeAddressField(context),
        AppSpacing.gapH12,
        _buildYourJobTitleField(context),
        AppSpacing.gapH12,
        _buildLevelOfInvolvementField(context),
        AppSpacing.gapH12,
        _buildStartWorkingDateField(context),
        AppSpacing.gapH12,
      ],
    );
  }

  Widget _buildCompanyNameField(BuildContext context) {
    return BlocBuilder<CreateCompanyBloc, CreateCompanyState>(
      buildWhen: (previous, current) =>
          previous.companyName != current.companyName || previous.submitCount != current.submitCount,
      builder: (context, state) {
        return AppTextField(
          hintText: context.l10n.field__company_name,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.companyName.isEmpty
                  ? context.l10n.field__company_name_required
                  : null,
          onChanged: (value) => context.read<CreateCompanyBloc>().add(CompanyNameChanged(value)),
        );
      },
    );
  }

  Widget _buildCompanyLogoField(BuildContext context) {
    return BlocBuilder<CreateCompanyBloc, CreateCompanyState>(
      buildWhen: (previous, current) =>
          previous.companyLogo != current.companyLogo || previous.submitCount != current.submitCount,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              context.l10n.field__company_logo,
              style: AppTextStyles.bodyMedium.gray,
            ),
            AppSpacing.gapH4,
            GestureDetector(
              onTap: () {
                context.read<CreateCompanyBloc>().add(
                      const SelectedPhotoPressed(),
                    );
              },
              child: SizedBox(
                width: 150,
                height: 80,
                child: state.companyLogo.isNotEmpty
                    ? Image.file(
                        File(
                          state.companyLogo,
                        ),
                      )
                    : DottedBorder(
                        radius: const Radius.circular(Sizes.s28),
                        color: AppColors.gray2,
                        child: Center(
                          child: Text(
                            context.l10n.create_company__click_to_upload,
                            style: AppTextStyles.bodySmall.gray,
                          ),
                        ),
                      ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildIndustryField(BuildContext context) {
    return BlocBuilder<CreateCompanyBloc, CreateCompanyState>(
      buildWhen: (previous, current) =>
          previous.selectedIndustry != current.selectedIndustry ||
          previous.submitCount != current.submitCount ||
          previous.industryList != current.industryList,
      builder: (context, state) {
        return DropdownInput<Industry>(
          value: state.selectedIndustry,
          items: state.industryList
              .map(
                (e) => DropdownItem<Industry>(e.industry, e),
              )
              .toList(),
          placeholder: context.l10n.field__company_industry,
          isRequired: true,
          onChanged: (value) {
            context.read<CreateCompanyBloc>().add(IndustryChanged(value));
          },
          markRequired: true,
        );
      },
    );
  }

  Widget _buildCompanyTypeField(BuildContext context) {
    return BlocBuilder<CreateCompanyBloc, CreateCompanyState>(
      buildWhen: (previous, current) =>
          previous.companyType != current.companyType || previous.submitCount != current.submitCount,
      builder: (context, state) {
        return DropdownInput<CompanyType>(
          value: state.companyType,
          items: CompanyType.values
              .map(
                (e) => DropdownItem<CompanyType>(e.displayName, e),
              )
              .toList(),
          placeholder: context.l10n.field__company_business_type,
          isRequired: true,
          onChanged: (value) {
            context.read<CreateCompanyBloc>().add(BusinessTypeChanged(value));
          },
          markRequired: true,
        );
      },
    );
  }

  Widget _buildOrganisationField(BuildContext context) {
    return BlocBuilder<CreateCompanyBloc, CreateCompanyState>(
      buildWhen: (previous, current) =>
          previous.organisation != current.organisation || previous.submitCount != current.submitCount,
      builder: (context, state) {
        return AppTextField(
          hintText: context.l10n.field__company_organisation,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          minLines: 2,
          maxLines: 10,
          onChanged: (value) => context.read<CreateCompanyBloc>().add(OrganisationChanged(value)),
        );
      },
    );
  }

  Widget _buildDateRegisteredField(BuildContext context) {
    return BlocBuilder<CreateCompanyBloc, CreateCompanyState>(
      buildWhen: (previous, current) =>
          previous.dateRegistered != current.dateRegistered ||
          previous.notRegistered != current.notRegistered ||
          previous.submitCount != current.submitCount,
      builder: (context, state) {
        return DatePickerInput(
          placeholder: context.l10n.field__date_registered,
          value: state.dateRegistered,
          readOnly: state.notRegistered,
          onChanged: (value) {
            if (value != null) {
              context.read<CreateCompanyBloc>().add(
                    DateRegisterdChanged(value),
                  );
            }
          },
        );
      },
    );
  }

  Widget _buildNotRegisteredYetField(BuildContext context) {
    return BlocBuilder<CreateCompanyBloc, CreateCompanyState>(
      buildWhen: (previous, current) =>
          previous.notRegistered != current.notRegistered || previous.submitCount != current.submitCount,
      builder: (context, state) {
        return Row(
          children: <Widget>[
            Checkbox(
              value: state.notRegistered,
              visualDensity: VisualDensity.compact,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onChanged: (value) {
                context.read<CreateCompanyBloc>().add(
                      NotRegisteredYetChanged(value ?? false),
                    );
              },
            ),
            Text(context.l10n.field__not_registered_yet),
          ],
        );
      },
    );
  }

  Widget _buildWebsiteField(BuildContext context) {
    return BlocBuilder<CreateCompanyBloc, CreateCompanyState>(
      buildWhen: (previous, current) =>
          previous.website != current.website || previous.submitCount != current.submitCount,
      builder: (context, state) {
        return AppTextField(
          hintText: context.l10n.field__website,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          onChanged: (value) => context.read<CreateCompanyBloc>().add(WebSiteChanged(value)),
        );
      },
    );
  }

  Widget _buildContactNumberField(BuildContext context) {
    return BlocBuilder<CreateCompanyBloc, CreateCompanyState>(
      buildWhen: (previous, current) =>
          previous.contactNumber != current.contactNumber || previous.submitCount != current.submitCount,
      builder: (context, state) {
        return AppTextField(
          hintText: context.l10n.field__contact_number,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
          onChanged: (value) => context.read<CreateCompanyBloc>().add(ContactNumberChanged(value)),
        );
      },
    );
  }

  Widget _buildOfficeAddressField(BuildContext context) {
    return BlocBuilder<CreateCompanyBloc, CreateCompanyState>(
      buildWhen: (previous, current) =>
          previous.officeAddress != current.officeAddress || previous.submitCount != current.submitCount,
      builder: (context, state) {
        return AppTextField(
          hintText: context.l10n.field__office_address,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          onChanged: (value) => context.read<CreateCompanyBloc>().add(OfficeAddressChanged(value)),
        );
      },
    );
  }

  Widget _buildYourJobTitleField(BuildContext context) {
    return BlocBuilder<CreateCompanyBloc, CreateCompanyState>(
      buildWhen: (previous, current) =>
          previous.jobTitle != current.jobTitle || previous.submitCount != current.submitCount,
      builder: (context, state) {
        return AppTextField(
          hintText: context.l10n.field__your_job_title,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.jobTitle.isEmpty
                  ? context.l10n.field__your_job_title_required
                  : null,
          onChanged: (value) => context.read<CreateCompanyBloc>().add(JobTitleChanged(value)),
        );
      },
    );
  }

  Widget _buildLevelOfInvolvementField(BuildContext context) {
    return BlocBuilder<CreateCompanyBloc, CreateCompanyState>(
      buildWhen: (previous, current) =>
          previous.levelOfInvolvement != current.levelOfInvolvement || previous.submitCount != current.submitCount,
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
            context.read<CreateCompanyBloc>().add(LevelOfInvolvementChanged(value));
          },
          markRequired: true,
        );
      },
    );
  }

  Widget _buildStartWorkingDateField(BuildContext context) {
    return BlocBuilder<CreateCompanyBloc, CreateCompanyState>(
      buildWhen: (previous, current) =>
          previous.startWorkingDate != current.startWorkingDate || previous.submitCount != current.submitCount,
      builder: (context, state) {
        return DatePickerInput(
          placeholder: context.l10n.field__start_working_date,
          value: state.startWorkingDate,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.startWorkingDate == null
                  ? context.l10n.field__level_of_involvement_required
                  : null,
          onChanged: (value) {
            if (value != null) {
              context.read<CreateCompanyBloc>().add(
                    StartWorkingDateChange(value),
                  );
            }
          },
        );
      },
    );
  }
}
