import 'package:flutter/material.dart';

import '../model/product.dart';
import 'color_option.dart';
import 'product_option.dart';

class CardBody extends StatelessWidget {
  const CardBody({
    @required this.productSelected,
    @required this.pageController,
  });

  final Product productSelected;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 25,
        left: 15,
        right: 15,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Nike Zoom KD 12',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 2,
                  bottom: 2,
                  left: 5,
                  right: 5,
                ),
                decoration: BoxDecoration(
                  color: Color(productSelected.color),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'NEW',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Text(
            'Men\'s running shoes',
            textAlign: TextAlign.start,
          ),
          Divider(
            height: 30,
          ),
          Text(
            'PRODUCT INFO',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s.'),
          Divider(
            height: 30,
          ),
          Text(
            'COLOR',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            height: 30,
            child: ListView.separated(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext ctx, int index) {
                return SizedBox(
                  width: 20,
                );
              },
              itemBuilder: (BuildContext ctx, int index) {
                return ColorOption(
                  pageController: pageController,
                  product: products[index],
                  index: index,
                );
              },
            ),
          ),
          Divider(
            height: 30,
          ),
          Text(
            'SIZE',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            height: 40,
            child: ListView.separated(
              itemCount: productSizeList.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext ctx, int index) {
                return SizedBox(
                  width: 15,
                );
              },
              itemBuilder: (BuildContext ctx, int index) {
                return SizeOption(
                  index: index,
                  productSize: productSizeList[index],
                );
              },
            ),
          ),
          Divider(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 40,
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: Color(0xff2175f5),
                  borderRadius: BorderRadius.circular(2),
                ),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'ADD TO CART',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '\$',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '189.99',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
