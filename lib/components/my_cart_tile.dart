import 'package:flutter/material.dart';
import 'package:fooddelivery/components/my_quantity_selector.dart';
import 'package:fooddelivery/model/cart_item.dart';

import 'package:fooddelivery/model/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatefulWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  State<MyCartTile> createState() => _MyCartTileState();
}

class _MyCartTileState extends State<MyCartTile> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        widget.cartItem.food.imagepath,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.cartItem.food.name),
                        Text(
                          '\$' + widget.cartItem.food.price.toString(),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        SizedBox(height: 10),
                        QuantitySelector(
                          quantity: widget.cartItem.quantity,
                          food: widget.cartItem.food,
                          onIncreament: () {
                            restaurant.addToCart(
                              widget.cartItem.food,
                              widget.cartItem.selectedAddons,
                            );
                          },
                          onDecreament: () {
                            restaurant.removeFromCart(widget.cartItem);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: widget.cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                children: widget.cartItem.selectedAddons
                    .map(
                      (Addon) => Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: FilterChip(
                          label: Row(
                            children: [
                              Text(Addon.name),
                              Text('(\$${Addon.price})'),
                            ],
                          ),
                          shape: StadiumBorder(
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          onSelected: (value) {},
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.secondary,
                          labelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
