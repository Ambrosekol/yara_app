import 'dart:convert';

import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;
import 'package:yara_app/util/models.dart';

class ApiCall {
  String url = 'https://dummyjson.com/products';
  Future<ProductsData> getProductsData() async {
    var initDio = Dio();
    var response = await initDio.get(url);
    print(response.data);
    if (response.statusCode == 200) {
      return ProductsData.fromJson(response.data);
    } else {
      throw Exception(response.statusMessage);
    }
  }
}
