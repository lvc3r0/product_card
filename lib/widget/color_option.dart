import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/product.dart';
import '../provider/product_provider.dart';

class ColorOption extends StatelessWidget {
  final PageController pageController;
  final Product product;
  final int index;
  const ColorOption({
    @required this.pageController,
    @required this.product,
    @required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 30,
        decoration: products[index].selected
            ? BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 5,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 1),
                  ),
                ],
              )
            : BoxDecoration(),
        child: Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Color(products[index].color),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      onTap: () {
        Provider.of<ProductProvider>(context, listen: false)
            .changeProductSelected(products[index]);
        pageController
            .nextPage(duration: Duration(seconds: 1), curve: Curves.linear)
            .then((value) {});
      },
    );
  }
}
