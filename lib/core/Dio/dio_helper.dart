import 'package:dio/dio.dart';
import 'package:finalproject/core/constant/const.dart';
import 'package:flutter/material.dart';


class DioHelpper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: base,
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
  }

  static Future<Response> GetData(
      {
    @required String? url,
    Map<String, dynamic>? query,
    String? token,
    String lang = 'en',
  }
  ) async {



    dio!.options.headers = {
      'lang': lang,
      'Authorization': token ?? '',
    };



    return await dio!.get(url!, queryParameters: query);
  }

  static Future<Response> PostData(
      {String token = '',
        String lang = 'en',
        required String url,
        //required Map<String, dynamic> query,
        required Map<String, dynamic> data

      }) async {
    dio!.options.headers = {
      'lang': lang,
      'Authorization': token ?? '',
    };

    return await dio!.post(url, data: data );
  }




  static Future<Response> putData(
      {String token = '',
        String lang = 'en',
        required String url,
        //required Map<String, dynamic> query,
        required Map<String, dynamic> data
      }) async {
    dio!.options.headers = {
      'lang': lang,
      'Authorization': token ?? '',
    };

    return await dio!.put(url, data: data);
  }
}