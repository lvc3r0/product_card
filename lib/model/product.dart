class Product {
  String image;
  int color;
  bool selected;

  Product(this.image, this.color, {this.selected = false});
}

class ProductSize {
  String name;
  bool selected;

  ProductSize(this.name, {this.selected = false});
}

List<Product> products = [
  Product('assets/images/blue.png', 0xff2175f5, selected: true),
  Product('assets/images/red.png', 0xfff84848),
  Product('assets/images/green.png', 0xff29b864),
  Product('assets/images/orange.png', 0xffff5521),
  Product('assets/images/black.png', 0xff444444),
];

List<ProductSize> productSizeList = [
  ProductSize('7'),
  ProductSize('8'),
  ProductSize('9', selected: true),
  ProductSize('10'),
  ProductSize('11'),
];
