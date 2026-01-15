import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:blocc/data/exceptions/app_exceptions.dart';
import 'package:blocc/data/network/base_api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class NetworkServiceApi implements BaseApiService{
  @override
  Future<dynamic> deleteApi(String url) async{

    dynamic jsonResponse;
try{
final response = await http.delete(Uri.parse(url)).timeout(const Duration(seconds: 50));
jsonResponse = returnResponse(response);
if(response.statusCode == 200){

}
}on SocketException{
  throw NoInternetException('');
}on TimeoutException{
  throw FetchDataException('Time out try again');
}

  }
  @override
  Future<dynamic> getApi(String url) async{

    dynamic jsonResponse;
try{
final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 50));
jsonResponse = returnResponse(response);
if(response.statusCode == 200){

}
}on SocketException{
  throw NoInternetException('');
}on TimeoutException{
  throw FetchDataException('Time out try again');
}

  }

  @override
  Future<dynamic> postApi(String url, var data) async{

    dynamic jsonResponse;
    if(kDebugMode){
      print(url);
      print(data);

    }
    try{
      final response = await http.post(Uri.parse(url), body: data).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);
      if(response.statusCode == 200){

      }
    }on SocketException{
      throw NoInternetException('');
    }on TimeoutException{
      throw FetchDataException('Time out try again');
    }

  }

  dynamic returnResponse(http.Response response){
    if(kDebugMode){
      print(response.statusCode);
    }
    switch(response.statusCode){
      case 200:
        dynamic jsonResponse =jsonDecode(response.body);
        return jsonResponse;
      case 400:
        dynamic jsonResponse =jsonDecode(response.body);
        return jsonResponse;
      case 401:
        throw UnauthorisedException();
      case 500:
        throw FetchDataException('Error communication with server.' + response.statusCode.toString());
      default:
        throw UnauthorisedException();
    }
  }


}