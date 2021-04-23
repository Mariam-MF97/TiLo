import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tilo/model/data_model.dart';
import 'package:tilo/model/details_data_model.dart';

class DetailsAPIService {
  // DetailsAPIService({this.productCode});
  //
  // final int productCode;
  static const _api_key = "96d832efe3msh1eab4e43db45e79p1666a2jsn3df9f4cc679b";

  // Base API url

  Future<Product> get(String productCode) async {
    String _baseUrl =
        "https://apidojo-hm-hennes-mauritz-v1.p.rapidapi.com/products/detail?rapidapi-key=$_api_key&lang=en&productcode=$productCode&country=asia2";

    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      var responseList = json.decode(response.body);
      DetailsDataModel dataList = DetailsDataModel.fromJson(responseList);
      return dataList.product;
    } else {
      throw Exception('Failed to load json data');
    }
  }
}
