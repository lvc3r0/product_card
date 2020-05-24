import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/product.dart';
import '../provider/product_provider.dart';

class SizeOption extends StatelessWidget {
  final int index;
  final ProductSize productSize;
  const SizeOption({@required this.index, @required this.productSize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10),
        width: 40,
        decoration: BoxDecoration(
          color: productSize.selected ? Color(0xff2175f5) : Color(0xffeeeeee),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          productSize.name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: productSize.selected ? Colors.white : Colors.black,
          ),
        ),
      ),
      onTap: () {
        Provider.of<ProductProvider>(context, listen: false)
            .changeProductSize(index);
      },
    );
  }
}
