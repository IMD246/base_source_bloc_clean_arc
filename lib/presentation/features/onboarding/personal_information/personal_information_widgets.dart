part of 'personal_information_page.dart';

class _WelcomeDecorationTexts extends StatelessWidget {
  const _WelcomeDecorationTexts();

  @override
  Widget build(BuildContext context) {
    final currentUser = getIt.get<AppBloc>().state.currentUser;

    return Column(
      children: [
        Text(
          context.l10n.onboarding__welcome_text(currentUser?.firstName ?? ''),
          style: AppTextStyles.headlineMedium.bold,
        ),
        AppSpacing.gapH8,
        Text(
          context.l10n.onboarding__desc_text,
          style: AppTextStyles.bodyLarge,
        ),
      ],
    );
  }
}

class _PersonalInformationForm extends StatelessWidget {
  _PersonalInformationForm();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController surNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController linkedInController = TextEditingController();
  final TextEditingController aboutYourselfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildFirstNameField(context),
          AppSpacing.gapH12,
          _buildSurNameField(context),
          AppSpacing.gapH12,
          _buildGenderField(context),
          AppSpacing.gapH12,
          _buildCountryField(context),
          AppSpacing.gapH12,
          _buildCityField(context),
          AppSpacing.gapH12,
          _buildPhoneField(context),
          AppSpacing.gapH12,
          _buildLinkedInProfile(context),
          AppSpacing.gapH12,
          _buildAboutYourself(context),
        ],
      ),
    );
  }

  Widget _buildFirstNameField(BuildContext context) {
    return BlocBuilder<PersonalInfomationBloc, PersonalInfomationState>(
      buildWhen: (previous, current) =>
          previous.firstName != current.firstName || previous.submitCount != current.submitCount,
      builder: (context, state) {
        firstNameController.text = state.firstName;

        return AppTextField(
          hintText: context.l10n.field__first_name,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          controller: firstNameController,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.firstName.isEmpty
                  ? context.l10n.field__first_name_required
                  : null,
          onChanged: (value) => context.read<PersonalInfomationBloc>().add(FirstNameChanged(value)),
        );
      },
    );
  }

  Widget _buildSurNameField(BuildContext context) {
    return BlocBuilder<PersonalInfomationBloc, PersonalInfomationState>(
      buildWhen: (previous, current) =>
          previous.surName != current.surName || previous.submitCount != current.submitCount,
      builder: (context, state) {
        surNameController.text = state.surName;

        return AppTextField(
          hintText: context.l10n.field__surname,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          controller: surNameController,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.surName.isEmpty
                  ? context.l10n.field__surname_required
                  : null,
          onChanged: (value) => context.read<PersonalInfomationBloc>().add(SurNameChanged(value)),
        );
      },
    );
  }

  Widget _buildCountryField(BuildContext context) {
    return BlocBuilder<PersonalInfomationBloc, PersonalInfomationState>(
      buildWhen: (previous, current) =>
          previous.country != current.country ||
          previous.submitCount != current.submitCount ||
          previous.countries != current.countries,
      builder: (context, state) {
        return DropdownInput<Country>(
          value: state.country,
          items: state.countries
              .map(
                (e) => DropdownItem<Country>(e.country, e),
              )
              .toList(),
          // labelText: context.l10n.field__current_country,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.country == null
                  ? context.l10n.field__current_country_required
                  : null,

          placeholder: context.l10n.field__current_country,
          isRequired: true,
          onChanged: (value) {
            context.read<PersonalInfomationBloc>().add(CountryChanged(value));
          },
          markRequired: true,
        );
      },
    );
  }

  Widget _buildCityField(BuildContext context) {
    return BlocBuilder<PersonalInfomationBloc, PersonalInfomationState>(
      buildWhen: (previous, current) =>
          previous.city != current.city ||
          previous.submitCount != current.submitCount ||
          previous.cities != current.cities,
      builder: (context, state) {
        return DropdownInput<String>(
          value: state.city,
          items: state.cities
              .map(
                (e) => DropdownItem<String>(e.city, e.city),
              )
              .toList(),
          // labelText: context.l10n.field__current_country,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.country == null
                  ? context.l10n.field__city_required
                  : null,

          placeholder: context.l10n.field__city,
          isRequired: true,
          onChanged: (value) {
            context.read<PersonalInfomationBloc>().add(CityChanged(value));
          },
          markRequired: true,
        );
      },
    );
  }

  Widget _buildPhoneField(BuildContext context) {
    return BlocBuilder<PersonalInfomationBloc, PersonalInfomationState>(
      buildWhen: (previous, current) => previous.phone != current.phone || previous.submitCount != current.submitCount,
      builder: (context, state) {
        phoneController.text = state.phone;

        return AppTextField(
          hintText: context.l10n.field__mobile_number,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
          controller: phoneController,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.surName.isEmpty
                  ? context.l10n.field__mobile_number_required
                  : null,
          onChanged: (value) => context.read<PersonalInfomationBloc>().add(PhoneChanged(value)),
        );
      },
    );
  }

  Widget _buildLinkedInProfile(BuildContext context) {
    return BlocBuilder<PersonalInfomationBloc, PersonalInfomationState>(
      buildWhen: (previous, current) =>
          previous.linkedInProfile != current.linkedInProfile || previous.submitCount != current.submitCount,
      builder: (context, state) {
        linkedInController.text = state.linkedInProfile;

        return AppTextField(
          hintText: context.l10n.field__linkedIn_profile,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          controller: linkedInController,
          onChanged: (value) => context.read<PersonalInfomationBloc>().add(LinkedInProfileChanged(value)),
        );
      },
    );
  }

  Widget _buildAboutYourself(BuildContext context) {
    return BlocBuilder<PersonalInfomationBloc, PersonalInfomationState>(
      buildWhen: (previous, current) =>
          previous.aboutYourself != current.aboutYourself || previous.submitCount != current.submitCount,
      builder: (context, state) {
        aboutYourselfController.text = state.aboutYourself;

        return AppTextField(
          hintText: context.l10n.field__tell_us_about_yourself,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          controller: aboutYourselfController,
          minLines: 3,
          maxLines: 10,
          maxLength: 200,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.surName.isEmpty
                  ? context.l10n.field__required
                  : null,
          onChanged: (value) => context.read<PersonalInfomationBloc>().add(AboutYourselfChanged(value)),
        );
      },
    );
  }

  Widget _buildGenderField(BuildContext context) {
    return BlocBuilder<PersonalInfomationBloc, PersonalInfomationState>(
      buildWhen: (previous, current) =>
          previous.gender != current.gender ||
          previous.submitCount != current.submitCount ||
          previous.cities != current.cities,
      builder: (context, state) {
        return DropdownInput<Gender>(
          value: state.gender,
          items: Gender.values
              .map(
                (e) => DropdownItem<Gender>(e.value, e),
              )
              .toList(),
          // labelText: context.l10n.field__current_country,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.country == null
                  ? context.l10n.field__gender_required
                  : null,

          placeholder: context.l10n.field__gender,
          isRequired: true,
          onChanged: (value) {
            context.read<PersonalInfomationBloc>().add(GenderChanged(value));
          },
          markRequired: true,
        );
      },
    );
  }
}

class _NextButton extends StatelessWidget {
  const _NextButton();

  void _onSignInPressed(BuildContext context) {
    context.read<PersonalInfomationBloc>().add(const PersonalInformationSubmitted());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton.primary(
          width: double.infinity,
          height: Sizes.s48,
          label: context.l10n.button__next.toUpperCase(),
          onPressed: () => _onSignInPressed(context),
        ),
      ],
    );
  }
}
