import 'package:eznior/data/entity/product.dart';

class ProductRepository {
  final List<Product> items = [
    Product("Beanie with logo", "assets/images/poster3.jpg", 1500, 799, 50),
    Product("Beanie with logo", "assets/images/poster2.jpg", 2000, 999, 50),
    Product("Beanie with logo", "assets/images/poster4.jpg", 1000, 450, 65),
    Product("Beanie with logo", "assets/images/poster1.jpg", 1500, 799, 50),
    Product("Beanie with logo", "assets/images/poster5.jpg", 1500, 799, 50),
  ];

  List<Product> getProducts() {
    return items;
  }
}
