import 'package:flutter/material.dart';
import 'package:tilo/model/details_data_model.dart';


class CartProvider with ChangeNotifier {
  List<Product> items = [];


  int get totalAmount {
    var total = 0;
    items.forEach((Product cartItem) {
      total += cartItem.whitePrice.price.toInt();
    });
    return total;
  }

  void addItem(Product item) {
    items.add(item);
    notifyListeners();
  }

void removeItem(Product item){
    for(int i =0 ;i<items.length;i++){
      if(items[i].code==item.code){
        items.removeAt(i);
        break;
      }
    }
    notifyListeners();
}
void clear()
{
  items=[];
  notifyListeners();
}



}
