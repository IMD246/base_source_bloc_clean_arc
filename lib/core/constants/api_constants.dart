import '../../data/datasources/gateway/api/api.dart';

class ApiConstants {
  const ApiConstants._();

  static const connectTimeoutInMs = Duration(milliseconds: 10000);

  static const maxRetries = 3;
  static const retryInterval = Duration(seconds: 3);

  static const defaultSuccessResponseMapperType =
      SuccessResponseMapperType.jsonObject;
}
