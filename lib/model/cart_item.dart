import 'package:fooddelivery/model/food.dart';

class CartItem {
  Food food;
  int quantity;
  List<Addon> selectedAddons;

  CartItem({required this.food,required this.selectedAddons,this.quantity=1});
  double get totalPrice {
    double addonsPrice = selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrice) * quantity;
  }
}