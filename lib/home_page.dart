// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/components/my_Tab_Bar.dart';
import 'package:fooddelivery/components/my_current_location.dart';
import 'package:fooddelivery/components/my_description_box.dart';
import 'package:fooddelivery/components/my_drawer.dart';
import 'package:fooddelivery/components/my_food_tile.dart';
import 'package:fooddelivery/components/my_silver_appbar.dart';
import 'package:fooddelivery/food_page.dart';
import 'package:fooddelivery/model/food.dart';
import 'package:fooddelivery/model/restaurant.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: FoodCategory.values.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filteredMenuByCatehory(
    FoodCategory category,
    List<Food> fullMenu,
  ) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filteredMenuByCatehory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return MyFoodTile(
            food: food,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FoodPage(food: food)),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),

      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            MySilverAppbar(
              title: MyTabBar(tabController: _tabController),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  MyCurrentLocation(),
                  MyDescriptionBox(),
                ],
              ),
            ),
          ];
        },
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),

        /// ← Add your scrollable body content here
      ),
    );
  }
}
