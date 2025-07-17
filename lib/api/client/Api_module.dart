import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:flutter/foundation.dart';
@module
abstract class Api_module{
  @singleton
  Dio provideDio(){
    var dio =  Dio(
      BaseOptions(
        baseUrl: 'https://ecommerce.routemisr.com/api/',
        receiveDataWhenStatusError: true,
      )
    );
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        enabled: kDebugMode,
      )
    );
    return dio;
  }
}