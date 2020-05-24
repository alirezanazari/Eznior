import 'package:eznior/data/entity/shopping_type.dart';

class FakeShoppingTypeGenerator {
  List<ShoppingType> types = [
    ShoppingType("Men",
        "https://static.zumiez.com/skin/frontend/delorum/default/images/hp-gender-images-male-may20-470x381.jpg"),
    ShoppingType("Women",
        "https://www.careeraddict.com/uploads/article/54807/young-woman-shopping-bags.jpg"),
    ShoppingType("Kids",
        "https://images.ctfassets.net/cnu0m8re1exe/2elnw1rJ0HL8QqPOd3OtH5/c5b25256f2f8c7ba398ef21a2ca6504d/Kid-Thinking.jpg"),
    ShoppingType("Makeup",
        "https://www.daraje.com/wp-content/uploads/2019/12/iranian-cosmetic.jpg"),
    ShoppingType("Bags",
        "https://www.motorcitysupplies.com/wp-content/uploads/2019/07/Biodegradable-shopping-bags.jpg"),
    ShoppingType("Holiday",
        "https://assets1.risnews.com/styles/content_sm/s3/2019-11/holiday%20shopping.jpg"),
    ShoppingType("Family",
        "https://www.nra.net.au/app/uploads/2018/08/family-shopping-centre-small.jpg")
  ];

  List<ShoppingType> generate() {
    return types;
  }
}
