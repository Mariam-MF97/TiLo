import 'package:flutter/cupertino.dart';
import 'package:tilo/model/data_model.dart';
import 'package:tilo/request/request_data.dart';

class DataProvider extends ChangeNotifier {
  var _dataRequest = APIService();

  List<Result> menData = [];
  List<Result> womenData = [];
  List<Result> babyData = [];

  DataProvider(int num, int page) {
    getData(num, page);
  }

  void getData(int num, int page) async {
    if (num == 0) {
      if (menData.isEmpty) {
        menData = await _dataRequest.get(num, page);
      }
    }
    if (num == 1) {
      if (womenData.isEmpty) {
        womenData = await _dataRequest.get(num, page);
      }
    }
    if (num == 2) {
      if (babyData.isEmpty) {
        babyData = await _dataRequest.get(num, page);
      }
    }
    notifyListeners();
  }
}
