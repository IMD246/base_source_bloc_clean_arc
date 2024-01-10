// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_boilerplate/core/configs/di/di.dart' as _i71;
import 'package:flutter_boilerplate/core/exceptions/mapper/api_exception/api_exception_mapper.dart'
    as _i32;
import 'package:flutter_boilerplate/core/exceptions/mapper/api_exception/dio_api_exception_mapper.dart'
    as _i15;
import 'package:flutter_boilerplate/core/exceptions/mapper/api_exception/graphql_api_exception_mapper.dart'
    as _i20;
import 'package:flutter_boilerplate/data/datasources/app_preferences.dart'
    as _i4;
import 'package:flutter_boilerplate/data/datasources/app_socket_datasource.dart'
    as _i33;
import 'package:flutter_boilerplate/data/datasources/auth_datasource.dart'
    as _i35;
import 'package:flutter_boilerplate/data/datasources/chat_datasource.dart'
    as _i40;
import 'package:flutter_boilerplate/data/datasources/company_datasource.dart'
    as _i9;
import 'package:flutter_boilerplate/data/datasources/datasources.dart' as _i38;
import 'package:flutter_boilerplate/data/datasources/event_datasource.dart'
    as _i16;
import 'package:flutter_boilerplate/data/datasources/gateway/api/api.dart'
    as _i17;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/authenticated_rest_api_client.dart'
    as _i7;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/clients.dart'
    as _i36;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/socket/signalr_client.dart'
    as _i28;
import 'package:flutter_boilerplate/data/datasources/gateway/api/clients/un_authenticated_rest_api_client.dart'
    as _i30;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/access_token_interceptor.dart'
    as _i3;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/connectivity_interceptor.dart'
    as _i13;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/interceptor.dart'
    as _i8;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/log_interceptor.dart'
    as _i14;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/refresh_token_interceptor.dart'
    as _i68;
import 'package:flutter_boilerplate/data/datasources/gateway/api/interceptor/trim_interceptor.dart'
    as _i29;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/json_array_response_mapper.dart'
    as _i21;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/json_object_response_mapper.dart'
    as _i22;
import 'package:flutter_boilerplate/data/datasources/gateway/api/response_mapper/paged_json_array_response_mapper.dart'
    as _i26;
import 'package:flutter_boilerplate/data/datasources/gateway/gateway.dart'
    as _i10;
import 'package:flutter_boilerplate/data/datasources/program_datasource.dart'
    as _i23;
import 'package:flutter_boilerplate/data/datasources/references_datasource.dart'
    as _i27;
import 'package:flutter_boilerplate/data/datasources/refresh_token_datasource.dart'
    as _i49;
import 'package:flutter_boilerplate/data/datasources/user_datasource.dart'
    as _i31;
import 'package:flutter_boilerplate/data/providers/app_socket_provider.dart'
    as _i34;
import 'package:flutter_boilerplate/data/repositories/auth_repo_impl.dart'
    as _i37;
import 'package:flutter_boilerplate/data/repositories/chat_repo_impl.dart'
    as _i41;
import 'package:flutter_boilerplate/data/repositories/company_repo_impl.dart'
    as _i12;
import 'package:flutter_boilerplate/data/repositories/event_repo_impl.dart'
    as _i19;
import 'package:flutter_boilerplate/data/repositories/notification_repo_impl.dart'
    as _i45;
import 'package:flutter_boilerplate/data/repositories/programs_repo_impl.dart'
    as _i25;
import 'package:flutter_boilerplate/data/repositories/reference_repo_impl.dart'
    as _i48;
import 'package:flutter_boilerplate/data/repositories/refresh_token_repo.dart'
    as _i50;
import 'package:flutter_boilerplate/data/repositories/user_repo_impl.dart'
    as _i53;
import 'package:flutter_boilerplate/domain/domain.dart' as _i24;
import 'package:flutter_boilerplate/domain/repositories/chat_repo.dart' as _i60;
import 'package:flutter_boilerplate/domain/repositories/company_repo.dart'
    as _i11;
import 'package:flutter_boilerplate/domain/repositories/event_repo.dart'
    as _i18;
import 'package:flutter_boilerplate/domain/repositories/repositories.dart'
    as _i43;
import 'package:flutter_boilerplate/presentation/base/bloc/common/common_bloc.dart'
    as _i62;
import 'package:flutter_boilerplate/presentation/common_blocs/app/app_bloc.dart'
    as _i56;
import 'package:flutter_boilerplate/presentation/common_blocs/socket_notification/socket_notification_bloc.dart'
    as _i52;
import 'package:flutter_boilerplate/presentation/features/auth/forgot_pass/bloc/forgot_pass_bloc.dart'
    as _i44;
import 'package:flutter_boilerplate/presentation/features/auth/sign_in/bloc/sign_in_bloc.dart'
    as _i70;
import 'package:flutter_boilerplate/presentation/features/auth/sign_up/bloc/sign_up_bloc.dart'
    as _i51;
import 'package:flutter_boilerplate/presentation/features/chat/chat_detail/bloc/chat_detail_bloc.dart'
    as _i57;
import 'package:flutter_boilerplate/presentation/features/chat/chat_media/bloc/chat_media_bloc.dart'
    as _i58;
import 'package:flutter_boilerplate/presentation/features/chat/chat_options/bloc/chat_options_bloc.dart'
    as _i59;
import 'package:flutter_boilerplate/presentation/features/chat/chat_participants/bloc/chat_participants_bloc.dart'
    as _i61;
import 'package:flutter_boilerplate/presentation/features/chat/conversations/bloc/conversations_bloc.dart'
    as _i42;
import 'package:flutter_boilerplate/presentation/features/chat/create/bloc/create_conversation_bloc.dart'
    as _i65;
import 'package:flutter_boilerplate/presentation/features/chat/select_participants/bloc/select_participants_bloc.dart'
    as _i69;
import 'package:flutter_boilerplate/presentation/features/home/calendar/bloc/calendar_bloc.dart'
    as _i39;
import 'package:flutter_boilerplate/presentation/features/home/menu/programs/bloc/programs_bloc.dart'
    as _i47;
import 'package:flutter_boilerplate/presentation/features/home/menu/programs/program_detail/bloc/program_details_bloc.dart'
    as _i46;
import 'package:flutter_boilerplate/presentation/features/onboarding/add_product/bloc/add_product_bloc.dart'
    as _i55;
import 'package:flutter_boilerplate/presentation/features/onboarding/company_information/bloc/company_information_bloc.dart'
    as _i63;
import 'package:flutter_boilerplate/presentation/features/onboarding/create_company/bloc/create_company_bloc.dart'
    as _i64;
import 'package:flutter_boilerplate/presentation/features/onboarding/onboarding_welcome/bloc/onboarding_welcome_bloc.dart'
    as _i54;
import 'package:flutter_boilerplate/presentation/features/onboarding/personal_information/bloc/personal_information_bloc.dart'
    as _i66;
import 'package:flutter_boilerplate/presentation/features/onboarding/profile_photo/bloc/profile_photo_bloc.dart'
    as _i67;
import 'package:flutter_boilerplate/presentation/routing/guard/auth_guard.dart'
    as _i6;
import 'package:flutter_boilerplate/presentation/routing/router/router.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AccessTokenInterceptor>(() => _i3.AccessTokenInterceptor());
    gh.singletonAsync<_i4.AppPreferences>(() => registerModule.appPreferences);
    gh.singleton<_i5.AppRouter>(_i5.AppRouter());
    gh.factory<_i6.AuthGuard>(() => const _i6.AuthGuard());
    gh.lazySingleton<_i7.AuthenticatedRestApiClient>(() =>
        _i7.AuthenticatedRestApiClient(
            accessTokenInterceptor: gh<_i8.AccessTokenInterceptor>()));
    gh.lazySingleton<_i9.CompanyDataSource>(
        () => _i9.CompanyDataSource(gh<_i10.AuthenticatedRestApiClient>()));
    gh.lazySingleton<_i11.CompanyRepository>(
        () => _i12.CompanyRepositoryImpl(gh<_i9.CompanyDataSource>()));
    gh.factory<_i13.ConnectivityInterceptor>(
        () => _i13.ConnectivityInterceptor());
    gh.factory<_i14.CustomLogInterceptor>(() => _i14.CustomLogInterceptor(
          enableLogRequestInfo: gh<bool>(),
          enableLogSuccessResponse: gh<bool>(),
          enableLogErrorResponse: gh<bool>(),
          enableLogHeader: gh<bool>(),
          enableLogRequestBody: gh<bool>(),
          enableLogResponseData: gh<bool>(),
        ));
    gh.factory<_i15.DioApiExceptionMapper>(
        () => const _i15.DioApiExceptionMapper());
    gh.factory<_i16.EventDataSource>(
        () => _i16.EventDataSource(gh<_i17.AuthenticatedRestApiClient>()));
    gh.lazySingleton<_i18.EventRepository>(
        () => _i19.EventRepositoryImpl(gh<_i16.EventDataSource>()));
    gh.factory<_i20.GraphqlApiExceptionMapper>(
        () => const _i20.GraphqlApiExceptionMapper());
    gh.factory<_i21.JsonArrayResponseMapper<dynamic>>(
        () => _i21.JsonArrayResponseMapper<dynamic>());
    gh.factory<_i22.JsonObjectResponseMapper<dynamic>>(
        () => _i22.JsonObjectResponseMapper<dynamic>());
    gh.factory<_i23.ProgramsDataSource>(
        () => _i23.ProgramsDataSource(gh<_i17.AuthenticatedRestApiClient>()));
    gh.factory<_i24.ProgramsRepository>(
        () => _i25.ProgramsRepositoryImpl(gh<_i23.ProgramsDataSource>()));
    gh.factory<_i26.RecordsJsonArrayResponseMapper<dynamic>>(
        () => _i26.RecordsJsonArrayResponseMapper<dynamic>());
    gh.lazySingleton<_i27.ReferencesDataSource>(
        () => _i27.ReferencesDataSource(gh<_i10.AuthenticatedRestApiClient>()));
    gh.lazySingleton<_i28.SignalRClient>(() => _i28.SignalRClient());
    gh.factory<_i29.TrimInterceptor>(() => _i29.TrimInterceptor());
    gh.lazySingleton<_i30.UnAuthenticatedRestApiClient>(
        () => _i30.UnAuthenticatedRestApiClient());
    gh.lazySingleton<_i31.UserDataSource>(
        () => _i31.UserDataSource(gh<_i10.AuthenticatedRestApiClient>()));
    gh.lazySingleton<_i32.ApiExceptionMapper>(() => _i32.ApiExceptionMapperImpl(
          gh<_i15.DioApiExceptionMapper>(),
          gh<_i20.GraphqlApiExceptionMapper>(),
        ));
    gh.lazySingleton<_i33.AppSocketDataSource>(
        () => _i33.AppSocketDataSource(gh<_i17.SignalRClient>()));
    gh.lazySingleton<_i34.AppSocketProvider>(
        () => _i34.AppSocketProvider(gh<_i28.SignalRClient>()));
    gh.lazySingleton<_i35.AuthDataSource>(
        () => _i35.AuthDataSource(gh<_i36.UnAuthenticatedRestApiClient>()));
    gh.lazySingleton<_i24.AuthRepository>(() => _i37.AuthRepositoryImpl(
          gh<_i38.AppPreferences>(),
          gh<_i38.AuthDataSource>(),
        ));
    gh.factory<_i39.CalendarBloc>(
        () => _i39.CalendarBloc(gh<_i18.EventRepository>()));
    gh.lazySingleton<_i40.ChatDataSource>(() => _i40.ChatDataSource(
          gh<_i17.AuthenticatedRestApiClient>(),
          gh<_i34.AppSocketProvider>(),
        ));
    gh.lazySingleton<_i24.ChatRepository>(
        () => _i41.ChatRepositoryImplement(gh<_i40.ChatDataSource>()));
    gh.factory<_i42.ConversationsBloc>(
        () => _i42.ConversationsBloc(gh<_i43.ChatRepository>()));
    gh.factory<_i44.ForgotPassBloc>(
        () => _i44.ForgotPassBloc(gh<_i43.AuthRepository>()));
    gh.factory<_i24.NotificationRepository>(
        () => _i45.NotificationRepoImpl(gh<_i34.AppSocketProvider>()));
    gh.factory<_i46.ProgramDetailsBloc>(
        () => _i46.ProgramDetailsBloc(gh<_i24.ProgramsRepository>()));
    gh.factory<_i47.ProgramsBloc>(
        () => _i47.ProgramsBloc(gh<_i24.ProgramsRepository>()));
    gh.lazySingleton<_i24.ReferenceRepository>(
        () => _i48.ReferenceRepositoryImpl(gh<_i38.ReferencesDataSource>()));
    gh.lazySingletonAsync<_i49.RefreshTokenDatasource>(
        () async => _i49.RefreshTokenDatasource(
              gh<_i36.UnAuthenticatedRestApiClient>(),
              await getAsync<_i4.AppPreferences>(),
            ));
    gh.lazySingletonAsync<_i50.RefreshTokenRepository>(
        () async => _i50.RefreshTokenRepository(
              await getAsync<_i49.RefreshTokenDatasource>(),
              await getAsync<_i4.AppPreferences>(),
            ));
    gh.factory<_i51.SignUpBloc>(
        () => _i51.SignUpBloc(gh<_i43.AuthRepository>()));
    gh.singleton<_i52.SocketNotificationBloc>(
        _i52.SocketNotificationBloc(gh<_i24.NotificationRepository>()));
    gh.lazySingleton<_i24.UserRepository>(() => _i53.UserRepositoryImpl(
          gh<_i31.UserDataSource>(),
          gh<_i34.AppSocketProvider>(),
        ));
    gh.factory<_i54.WelcomeOnboardingBloc>(
        () => _i54.WelcomeOnboardingBloc(gh<_i43.UserRepository>()));
    gh.factory<_i55.AddProductBloc>(() => _i55.AddProductBloc(
          gh<_i11.CompanyRepository>(),
          gh<_i43.ReferenceRepository>(),
          gh<_i43.UserRepository>(),
        ));
    gh.singleton<_i56.AppBloc>(_i56.AppBloc(gh<_i24.UserRepository>()));
    gh.factory<_i57.ChatDetailBloc>(
        () => _i57.ChatDetailBloc(gh<_i43.ChatRepository>()));
    gh.factory<_i58.ChatMediaBloc>(
        () => _i58.ChatMediaBloc(gh<_i24.ChatRepository>()));
    gh.factory<_i59.ChatOptionsBloc>(
        () => _i59.ChatOptionsBloc(gh<_i60.ChatRepository>()));
    gh.factory<_i61.ChatParticipantsBloc>(
        () => _i61.ChatParticipantsBloc(gh<_i60.ChatRepository>()));
    gh.factory<_i62.CommonBloc>(() => _i62.CommonBloc(
          gh<_i24.AuthRepository>(),
          gh<_i24.UserRepository>(),
        ));
    gh.factory<_i63.CompanyInformationBloc>(() => _i63.CompanyInformationBloc(
          gh<_i24.ReferenceRepository>(),
          gh<_i24.UserRepository>(),
          gh<_i11.CompanyRepository>(),
        ));
    gh.factory<_i64.CreateCompanyBloc>(() => _i64.CreateCompanyBloc(
          gh<_i43.UserRepository>(),
          gh<_i43.ReferenceRepository>(),
          gh<_i11.CompanyRepository>(),
        ));
    gh.factory<_i65.CreateConversationBloc>(() => _i65.CreateConversationBloc(
          gh<_i24.UserRepository>(),
          gh<_i24.ChatRepository>(),
        ));
    gh.factory<_i66.PersonalInfomationBloc>(() => _i66.PersonalInfomationBloc(
          gh<_i24.ReferenceRepository>(),
          gh<_i24.UserRepository>(),
        ));
    gh.factory<_i67.ProfilePhotoBloc>(
        () => _i67.ProfilePhotoBloc(gh<_i43.UserRepository>()));
    gh.factoryAsync<_i68.RefreshTokenInterceptor>(
        () async => _i68.RefreshTokenInterceptor(
              await getAsync<_i50.RefreshTokenRepository>(),
              gh<_i10.UnAuthenticatedRestApiClient>(),
            ));
    gh.factory<_i69.SelectParticipantsBloc>(
        () => _i69.SelectParticipantsBloc(gh<_i24.UserRepository>()));
    gh.factory<_i70.SignInBloc>(() => _i70.SignInBloc(
          gh<_i43.AuthRepository>(),
          gh<_i43.UserRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i71.RegisterModule {}
