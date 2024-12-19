import 'package:base_project/src/dio_interceptor/timeout_interceptor.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:base_project/base_project.dart';

abstract class BaseDio {
  Future<Dio> getDio(
      {String? contentType, String? baseUrl, CachePolicy? cachePolicy}) async {
    // Create new Dio instance with specific timeout options
    var dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 10);

    // Set custom baseUrl if needed
    if (baseUrl != null) {
      dio.options.baseUrl = baseUrl;
    }

    // Set the receive timeout for the Dio options
    dio.options.receiveTimeout = const Duration(seconds: 10);

    // Set the content-type header in the Dio Options
    dio.options.headers["Content-Type"] = contentType ?? "application/json";

    // Get the ACCESS_TOKEN from the CacheHelper
    String token = CacheHelper.getString(key: ACCESS_TOKEN);
    // If the token is not null, add it to the Authorization header
    if (token.isNotEmpty) {
      dio.options.headers["Authorization"] = "Bearer $token";
    }
    // Add logging interceptor
    // dio.interceptors.add(dioLoggerInterceptor);

    // Pretty dio logger
    if (RunConfig.isDev) {
      dio.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));
    }
    // Interceptor for authorization
    dio.interceptors.add(AuthorizationInterceptor(dio));

    // Interceptor for timeout
    dio.interceptors.add(TimeOutInterceptor(dio));

    // Cache manager
    if (!kIsWeb) {
      CacheOptions cacheOption = await getCacheOption(policy: cachePolicy);
      dio.interceptors.add(DioCacheInterceptor(options: cacheOption));
    }
    return dio;
  }

  ApiExceptionEntity throwErr(DioException err) {
    // Get error message from response or error object
    // String? errMsn = err.response?.data.toString();
    // String messErr = errMsn ?? err.error.toString();
    // Handle specific time out and unreachable network errors
    // if (messErr.toLowerCase().contains("timed out") ||
    //     messErr.toLowerCase().contains("network is unreachable")) {
    //   messErr =
    //       "Không thể kết nối đến server.\nVui lòng kiểm tra kết nối mạng !!";
    // }
    try {
      // ErrorEntity errorEntity = ErrorEntity.fromJson(err.response?.data);
      return ApiExceptionEntity(
          message: err.response?.data['metaData']['message'] ?? '',
          title: err.response?.data['metaData']['errorCode'] ?? "unknown",
          errCode:
              int.tryParse(err.response?.data['metaData']['errorCode'] ?? ''));
    } catch (e1) {
      // Return ApiException entity with error message and status code
      return ApiExceptionEntity(
          message: "Đã có lỗi vui lòng thử lại",
          errCode: err.response?.statusCode);
    }
  }
}
