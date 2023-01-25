import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:yara_app/util/models.dart';

class ApiCall {
  String url = 'https://dummyjson.com/products';
  Future<ProductsData> getProductsData() async {
    var initDio = Uri.parse(url);
    var response = await http.get(initDio);
    // print(response.data);
    // if (response.) {
    var mydata = jsonDecode(response.body);
    // print(mydata);
    return ProductsData.fromJson(mydata);
    // } else {
    //   throw Exception(response.statusMessage);
    // }
  }
}
