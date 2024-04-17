import 'package:flutter/material.dart';
import 'package:menu_ui/models/spotlight_best_top_food.dart';
import 'package:menu_ui/utils/ui_helper.dart';
import 'package:menu_ui/widgets/mobile/food_list_item_view.dart';
import 'package:menu_ui/widgets/responsive.dart';

import 'restaurant_detail_screen.dart';

class RestaurantVerticalListView extends StatelessWidget {
  final String title;
  final List<SpotlightBestTopFood> restaurants;
  final bool isAllRestaurantNearby;

  const RestaurantVerticalListView({
    super.key,
    required this.title,
    required this.restaurants,
    this.isAllRestaurantNearby = false,
  })  : assert(title != '');

  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);

    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style:
                Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 20.0),
          ),
          isAllRestaurantNearby
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    UIHelper.verticalSpaceExtraSmall(),
                    Text(
                      'Discover unique tastes near you',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 14.0),
                    ),
                  ],
                )
              : const SizedBox(),
          UIHelper.verticalSpaceMedium(),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: restaurants.length,
            itemBuilder: (context, index) => InkWell(
              onTap: isTabletDesktop
                  ? () {}
                  : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RestaurantDetailScreen(),
                        ),
                      );
                    },
              child: FoodListItemView(
                restaurant: restaurants[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
