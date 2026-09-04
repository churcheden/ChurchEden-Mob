import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

abstract class MYHttpClient {
  late Dio client;
  BaseOptions? baseOptions;
  List<Interceptor>? interceptors;
  HttpClient Function()? createHttpClient;
  bool Function(X509Certificate? certificate, String host, int port)?
  validateCertificate;

  MYHttpClient({this.baseOptions,this.interceptors,this.createHttpClient,this.validateCertificate}){
    client =setup(
      baseOptions ?? BaseOptions(),
      interceptor: interceptors,
      createHttpClient: createHttpClient,
      validateCertificate: validateCertificate,
    );
  }
  Dio setup(BaseOptions baseOptions,{
  List<Interceptor>?interceptor,
  HttpClient Function()? createHttpClient,
  bool Function(X509Certificate? certificate, String host, int port)?
  validateCertificate,

  }){
final dio=Dio(baseOptions);

  if (!kIsWeb) {
    (dio.httpClientAdapter as IOHttpClientAdapter)
      ..createHttpClient = createHttpClient
      ..validateCertificate = validateCertificate;
  }
  dio.interceptors.addAll((interceptor ?? []));

return dio;

  }
}
