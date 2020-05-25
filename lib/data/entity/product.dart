class Product {
  String title;
  String image;
  int price;
  int discount;
  int discountPercent;

  Product(
      this.title, this.image, this.price, this.discount, this.discountPercent);
}

class ProductDetail {
  String id;
  String title;
  String description;
  String image;
  int price;
  int discount;
  int discountPercent;
  bool isLiked;
  String color;
  int quantity;
  String size;

  ProductDetail(
      this.id,
      this.title,
      this.description,
      this.image,
      this.price,
      this.discount,
      this.discountPercent,
      this.isLiked,
      this.color,
      this.quantity,
      this.size);
}
