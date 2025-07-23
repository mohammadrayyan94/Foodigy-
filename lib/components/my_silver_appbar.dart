import 'package:flutter/material.dart';
import 'package:fooddelivery/cart_page.dart';

class MySilverAppbar extends StatelessWidget {
  final Widget title;
  final Widget child;
  const MySilverAppbar({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,

      title: Center(
        child: Container(
          height: 100,
          width: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: AssetImage('lib/images/foodlogo.png'),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartPage()),
          ),
          icon: Icon(Icons.shopping_cart),
        ),
      ],

      backgroundColor: Theme.of(context).colorScheme.surface,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
