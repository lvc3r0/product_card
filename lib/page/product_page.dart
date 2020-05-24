import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/product.dart';
import '../provider/product_provider.dart';
import '../widget/card_body.dart';
import '../widget/card_header.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final pageController = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    var productProvider = Provider.of<ProductProvider>(context);
    Product productSelected = productProvider.productSelected;
    return Scaffold(
      backgroundColor: Color(0xffefefef),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 210,
                  child: CardHeader(
                    pageController: pageController,
                  ),
                ),
                CardBody(
                  productSelected: productSelected,
                  pageController: pageController,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
