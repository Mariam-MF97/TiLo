import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tilo/model/data_model.dart';

class APIService {

  List<String> categories = ['men_all','ladies','kids_all','kids_newbornbaby_viewall'];
  static const _api_key = "96d832efe3msh1eab4e43db45e79p1666a2jsn3df9f4cc679b";

  // Base API url

  Future<List<Result>> get(int num,int page) async {

      String _baseUrl =
        "https://apidojo-hm-hennes-mauritz-v1.p.rapidapi.com/products/list?rapidapi-key=$_api_key&country=asia2&lang=en&currentpage=$page&pagesize=40&categories=${categories[num]}";

    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      var responseList = json.decode(response.body);
      DataModel dataList = DataModel.fromJson(responseList);
      return dataList.results;
    } else {
      throw Exception('Failed to load json data');
    }
  }
}
