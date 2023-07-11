import 'package:dio/dio.dart';
import '../../infrastructure/services/app_constants.dart';

class HttpService {
  Dio client({bool requireAuth = false}) => Dio(
        BaseOptions(
          baseUrl: AppConstants.baseUrl,
          connectTimeout: 60 * 1000,
          receiveTimeout: 60 * 1000,
          sendTimeout: 60 * 1000,
          headers: {
            'Accept': 'application/json',
            'Content-type': 'application/json'
          },
        ),
      )
        ..interceptors
            .add(LogInterceptor(requestBody: true, responseBody: true));
}
