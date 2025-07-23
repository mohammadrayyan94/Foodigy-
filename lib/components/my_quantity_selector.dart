

import 'package:flutter/material.dart';
import 'package:fooddelivery/model/food.dart';

class QuantitySelector extends StatefulWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncreament;
  final VoidCallback onDecreament;

  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.food,
    required this.onIncreament,
    required this.onDecreament,
  });

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Theme.of(context).colorScheme.background,
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: widget.onDecreament,
            child: Icon(
              Icons.remove,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              width: 20,
              child: Center(child: Text(widget.quantity.toString())),
            ),
          ),
          GestureDetector(
            onTap: widget.onIncreament,
            child: Icon(
              Icons.add,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
