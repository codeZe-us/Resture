import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../common/routes/route_generator/route_generator.dart';
import '../../model/product_model.dart';

class ApiService {
  ApiService._();

  static Future<Dio> _init() async {
    // String? token;
    // token = await LocalStorage.retrieveToken();
    final dio = Dio();
    dio.options = BaseOptions(
        baseUrl: "https://test-production-4bc9.up.railway.app",
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
        headers: {
          "accept": "*/*",
          "Content-Type": "application/json",
        });
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          log(options.headers.toString());
          log(options.baseUrl + options.path);

          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          log(response.toString());
          return handler.next(response);
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          log(e.response.toString(),
              error: e.runtimeType,
              time: DateTime.now(),
              zone: Zone.current,
              name: e.message.toString());
          log(e.toString());
          return handler.next(e);
        },
      ),
    );
    return dio;
  }

  static Future<Response> _get(String path) async {
    return (await _init()).get(path);
  }


  Future<void> fetchProducts() async {
    try {
      final dio = Dio();
      final response = await dio.get('/?format=api');

      if (response.statusCode == 200) {
        final List<dynamic> responseData = response.data["data"];
        final List<Product> products = responseData.map((data) => Product.fromJson(data)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}

