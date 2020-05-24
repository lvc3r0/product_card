import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/product.dart';
import '../provider/product_provider.dart';

class CardHeader extends StatelessWidget {
  final PageController pageController;
  const CardHeader({
    this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    var productProvider = Provider.of<ProductProvider>(context);
    Product productSelected = productProvider.productSelected;
    return Container(
      child: Stack(
        children: <Widget>[
          PageView.builder(
            controller: pageController,
            reverse: true,
            itemCount: productProvider.colors.length,
            itemBuilder: (BuildContext ctx, int index) {
              return Container(
                height: 150,
                color: Color(productProvider.colors[index]),
              );
            },
          ),
          Container(
            height: 30,
            width: double.infinity,
            color: Color(0xffefefef),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: Center(
              child: Text(
                'NIKE',
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white.withOpacity(0.1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            right: 45,
            top: 5,
            child: Transform.rotate(
              angle: 50,
              child: Image.asset(
                productProvider.productSelected.image,
                fit: BoxFit.cover,
                width: 330,
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 15,
            child: Image.asset(
              'assets/images/logo.png',
              width: 50,
            ),
          ),
          Positioned(
            top: 40,
            right: 15,
            child: Container(
              padding: EdgeInsets.all(6),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.share,
                size: 20,
                color: Color(productSelected.color),
              ),
            ),
          )
        ],
      ),
    );
  }
}
