import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/exceptions/api_exception.dart';
import '../../../../../core/utils/utils.dart';
import 'base_interceptor.dart';

@injectable
class ConnectivityInterceptor extends BaseInterceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final isConnected = await ConnectivityUtils.isConnected();

    if (!isConnected) {
      return handler.reject(
        DioError(
          requestOptions: options,
          error: const ApiException(ApiExceptionKind.noInternet),
        ),
      );
    }

    return super.onRequest(options, handler);
  }
}
