import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddelivery/model/cart_item.dart';
import 'package:fooddelivery/model/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> menu = [
    // burger
    Food(
      name: "Barbque Burger",
      description: "An excellent Barbque bURGER",
      imagepath: "lib/images/burgers/barbque.png",
      price: 0.89,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.50),
        Addon(name: "Bacon", price: 0.20),
        Addon(name: 'Avacado', price: 0.40),
      ],
    ),
    Food(
      name: "Burger",
      description: "Impressive Burger",
      imagepath: "lib/images/burgers/burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.50),
        Addon(name: "Bacon", price: 0.20),
        Addon(name: 'Avacado', price: 0.40),
      ],
    ),
    Food(
      name: "Cheese Burger",
      description: "Loaded cheese burger",
      imagepath: "lib/images/burgers/chesse.png",
      price: 0.95,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 1.00),
        Addon(name: "Bacon", price: 0.20),
        Addon(name: 'Sauce', price: 0.40),
      ],
    ),
    Food(
      name: "Italian Burger",
      description: "Adelicious Italian burger",
      imagepath: "lib/images/burgers/italian.png",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.50),
        Addon(name: "Bacon", price: 0.20),
        Addon(name: 'secret mayo', price: 0.40),
      ],
    ),
    // desserts
    Food(
      name: "A Chocolate Cake",
      description: "A delicious Chocolate cake",
      imagepath: "lib/images/dessert/chocolate.png",
      price: 1.00,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Extra Chocolate", price: 0.50),
        Addon(name: "Sweet", price: 0.20),
        Addon(name: "Jelly", price: 0.40),
      ],
    ),
    Food(
      name: "Cookies",
      description: "A delicious Cookies",
      imagepath: "lib/images/dessert/cookie.png",
      price: 1.50,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Extra Chocolate", price: 0.50),
        Addon(name: "Sweet", price: 0.20),
        Addon(name: "Extra Cookies", price: 1.00),
      ],
    ),
    Food(
      name: "Dessert",
      description: "A delicious Desert",
      imagepath: "lib/images/dessert/desert.png",
      price: 2.50,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Extra Chocolate", price: 0.50),
        Addon(name: "Sweet", price: 0.20),
        Addon(name: "Extra Cookies", price: 1.23),
      ],
    ),
    Food(
      name: "Strawberry Cake",
      description: "A delicious Strawberry Cake",
      imagepath: "lib/images/dessert/cookie.png",
      price: 2.00,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Extra Chocolate", price: 0.50),
        Addon(name: "Sweet", price: 0.20),
        Addon(name: "Icecreame", price: 2.00),
      ],
    ),
    // drinks
    Food(
      name: "Apple Juice",
      description: "Fresh and tangy apple juice",
      imagepath: "lib/images/drinks/apple.png",
      price: 1.80,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.30),
        Addon(name: "Sugar-Free", price: 0.20),
        Addon(name: "Mint Leaves", price: 0.40),
      ],
    ),

    Food(
      name: "Blueberry Blast",
      description: "Chilled blueberry smoothie",
      imagepath: "lib/images/drinks/blueberry.png",
      price: 2.20,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Chia Seeds", price: 0.50),
        Addon(name: "Vanilla Shot", price: 0.30),
        Addon(name: "Crushed Ice", price: 0.25),
      ],
    ),

    Food(
      name: "Mixed Drinks",
      description: "A vibrant mix of refreshing drinks",
      imagepath: "lib/images/drinks/drinks.png",
      price: 2.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lime Splash", price: 0.40),
        Addon(name: "Extra Sweet", price: 0.20),
        Addon(name: "Fruit Garnish", price: 0.50),
      ],
    ),

    Food(
      name: "Lemon Cooler",
      description: "Zesty and cool lemon drink",
      imagepath: "lib/images/drinks/lemon.png",
      price: 1.70,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Salt Rim", price: 0.10),
        Addon(name: "Ginger", price: 0.30),
        Addon(name: "Lemon Slice", price: 0.25),
      ],
    ),

    Food(
      name: "Mango Smoothie",
      description: "Sweet and creamy mango smoothie",
      imagepath: "lib/images/drinks/mango.png",
      price: 2.50,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.60),
        Addon(name: "Mango Chunks", price: 0.70),
        Addon(name: "Tapioca Pearls", price: 0.80),
      ],
    ),

    Food(
      name: "Trending Mix",
      description: "Our trending best-seller blend",
      imagepath: "lib/images/drinks/trend.png",
      price: 3.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Energy Booster", price: 1.00),
        Addon(name: "Protein Shot", price: 1.20),
        Addon(name: "Honey", price: 0.50),
      ],
    ),
    // pizza
    Food(
      name: "Barbecue Pizza",
      description: "Smoky and savory barbecue-style pizza",
      imagepath: "lib/images/pizza/barbque.png",
      price: 4.50,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Extra BBQ Sauce", price: 0.70),
        Addon(name: "Grilled Chicken", price: 1.50),
        Addon(name: "Cheddar Cheese", price: 0.90),
      ],
    ),

    Food(
      name: "Italian Classic",
      description: "Authentic Italian pizza with rich flavors",
      imagepath: "lib/images/pizza/italian.png",
      price: 4.80,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Mozzarella", price: 0.60),
        Addon(name: "Basil Leaves", price: 0.40),
        Addon(name: "Olives", price: 0.50),
      ],
    ),

    Food(
      name: "John’s Special",
      description: "A loaded pizza with John's secret recipe",
      imagepath: "lib/images/pizza/johnpizza.png",
      price: 5.00,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Stuffed Crust", price: 1.20),
        Addon(name: "Pepperoni", price: 1.00),
        Addon(name: "Hot Sauce", price: 0.50),
      ],
    ),

    Food(
      name: "Cheesy Pizza",
      description: "Classic cheese pizza loved by all",
      imagepath: "lib/images/pizza/pizza.png",
      price: 3.99,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Crushed Garlic", price: 0.30),
        Addon(name: "Oregano", price: 0.25),
      ],
    ),

    Food(
      name: "Tomato Delight",
      description: "Tangy tomato base with melted cheese",
      imagepath: "lib/images/pizza/tomato.png",
      price: 3.50,
      category: FoodCategory.pizzas,
      availableAddons: [
        Addon(name: "Tomato Slices", price: 0.35),
        Addon(name: "Feta Cheese", price: 0.80),
        Addon(name: "Spinach", price: 0.40),
      ],
    ),
    // salad
    Food(
      name: "Chicken Salad",
      description: "Fresh greens with grilled chicken slices",
      imagepath: "lib/images/salad/chickensalad.png",
      price: 3.50,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(name: "Extra Chicken", price: 1.20),
        Addon(name: "Boiled Egg", price: 0.80),
        Addon(name: "Ranch Dressing", price: 0.50),
      ],
    ),

    Food(
      name: "Chinese Salad",
      description: "Crispy and spicy Chinese-style salad",
      imagepath: "lib/images/salad/chinnessalad.png",
      price: 3.80,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(name: "Sesame Seeds", price: 0.30),
        Addon(name: "Fried Noodles", price: 0.60),
        Addon(name: "Spicy Sauce", price: 0.40),
      ],
    ),

    Food(
      name: "Cold Salad",
      description: "Chilled and refreshing veggie mix",
      imagepath: "lib/images/salad/coldsalad.png",
      price: 3.20,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(name: "Yogurt Dressing", price: 0.50),
        Addon(name: "Chickpeas", price: 0.45),
        Addon(name: "Cucumber Slices", price: 0.25),
      ],
    ),

    Food(
      name: "Green Salad",
      description: "A classic bowl of fresh greens and veggies",
      imagepath: "lib/images/salad/salad.png",
      price: 2.99,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Croutons", price: 0.50),
        Addon(name: "Italian Dressing", price: 0.40),
      ],
    ),
  ];
  final List<CartItem> _cart = [];
  String _deliveryAddress = '100 New York, NY 10001';
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  // List <Food> get _menu => menu;

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );
      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex == -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      }
    } else {
      _cart.removeAt(cartIndex);
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here,s your receipt.");
    receipt.writeln();
    String formattedDate = DateFormat(
      'yyyy-mm-dd hh:mm:ss',
    ).format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------");

    for (final cartItem in _cart) {
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}",
      );
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("   Add-ons:${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("---------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price:${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to:$deliveryAddress");

    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name}(${_formatPrice(addon.price)})")
        .join(",");
  }
}
