import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/configs/di/di.dart';
import '../../../../../core/constants/route_constants.dart';
import '../../../../../domain/entities/entities.dart';
import '../../../../../domain/repositories/company_repo.dart';
import '../../../../../domain/repositories/repositories.dart';
import '../../../../base/bloc/base_bloc.dart';
import '../../../../common_blocs/app/app_bloc.dart';
import '../../../../routing/router/router.dart';

part 'add_product_bloc.freezed.dart';
part 'add_product_event.dart';
part 'add_product_state.dart';

@injectable
class AddProductBloc extends BaseBloc<AddProductEvent, AddProductState> {
  AddProductBloc(
    this._companyRepository,
    this._referenceRepository,
    this._userRepository,
  ) : super(AddProductState.initial()) {
    on<NextSubmitted>(_onNextSubmitted);
    on<ProductNameChanged>(_onProductNameChanged);
    on<ProductDescriptionChanged>(_onProductDescriptionChanged);
    on<ProductCategoryChanged>(_onProductCategoryChanged);
    on<ProductStatusChanged>(_onProductStatusChanged);
  }

  final CompanyRepository _companyRepository;

  final UserRepository _userRepository;

  final ReferenceRepository _referenceRepository;

  Future<void> _onNextSubmitted(
    NextSubmitted event,
    Emitter<AddProductState> emit,
  ) async {
    if (state.isSubmitting || !state.isFormValid) {
      return;
    }
    emit(
      state.copyWith(isSubmitting: true),
    );
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(submitCount: state.submitCount + 1));
        await _companyRepository.createCompanyProduct(
          productName: state.productName,
          productPitch: state.productDescription,
          companyProductStatusID: state.selectedProductStatus!.companyProductStatusID!,
          productCategoryID: state.productCategory!.value,
          companyID: currentUser.companyID!,
        );
        final onboaringStep = await _userRepository.updateOnboardingStep(
          onboardingStep: OnboardingStepEnum.productAdd,
          userID: currentUser.id!,
          onboardingStepStatus: OnboardingStepStatusEnum.complete,
        );

        getIt.get<AppBloc>().add(
              OnboardingStepChanged(onboaringStep),
            );
        emit(state.copyWith(isSubmitting: false));
        final currentUserProfile = await _userRepository.getCurrentUserProfile();
        getIt.get<AppBloc>().add(CurrentUserChanged(currentUserProfile));
        await getIt.get<AppRouter>().pushNamed(RouteList.onboardingWelcome);
      },
      doOnError: (exception) async {
        logError(exception.toString());
        emit(state.copyWith(isSubmitting: false));
      },
    );
  }

  FutureOr<void> _onProductNameChanged(
    ProductNameChanged event,
    Emitter<AddProductState> emit,
  ) {
    emit(state.copyWith(productName: event.productName));
  }

  FutureOr<void> _onProductDescriptionChanged(
    ProductDescriptionChanged event,
    Emitter<AddProductState> emit,
  ) {
    emit(state.copyWith(productDescription: event.productDescription));
  }

  Future<FutureOr<void>> _onProductCategoryChanged(
    ProductCategoryChanged event,
    Emitter<AddProductState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        final productStatusList = await _referenceRepository.getProductStatusList(event.productCategory.value);
        emit(state.copyWith(
          productCategory: event.productCategory,
          productStatusList: productStatusList,
        ));
      },
      doOnError: (exception) async {
        logError(exception.toString());
        emit(state.copyWith(isSubmitting: false));
      },
    );
  }

  FutureOr<void> _onProductStatusChanged(
    ProductStatusChanged event,
    Emitter<AddProductState> emit,
  ) {
    emit(state.copyWith(selectedProductStatus: event.productStatus));
  }
}
