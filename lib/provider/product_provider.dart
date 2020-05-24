import 'package:flutter/material.dart';

import '../model/product.dart';

class ProductProvider extends ChangeNotifier {
  Product productSelected = products[0];
  List<int> colors = [
    0xff2175f5,
  ];

  bool loading = false;

  changeProductSelected(Product product) async {
    if (!loading) {
      loading = true;
      products.forEach((element) {
        element.selected = false;
      });
      product.selected = true;
      productSelected = product;
      if (colors.length == 3) {
        colors.remove(0);
      }
      colors.add(product.color);
      Future.delayed(Duration(seconds: 1)).then((value) => loading = false);
      notifyListeners();
    }
  }

  changeProductSize(int index) {
    productSizeList.forEach((element) {
      element.selected = false;
    });
    productSizeList.elementAt(index).selected = true;
    notifyListeners();
  }
}
