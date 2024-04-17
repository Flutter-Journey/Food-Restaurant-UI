import 'package:flutter/material.dart';
import 'package:menu_ui/utils/app_colors.dart';
import 'package:menu_ui/utils/ui_helper.dart';
import 'package:menu_ui/widgets/responsive.dart';

class MenuSafetyBannerView extends StatelessWidget {
  const MenuSafetyBannerView({super.key});

  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);
    final cardWidth =
        MediaQuery.of(context).size.width / (isTabletDesktop ? 3.8 : 1.2);

    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.arrow_downward,
                color: menuOrange,
              ),
              UIHelper.horizontalSpaceExtraSmall(),
              Flexible(
                child: Text(
                  "SWIGGY's KEY MEASURES TO ENSURE SAFETY",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: menuOrange,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              UIHelper.horizontalSpaceExtraSmall(),
              const Icon(
                Icons.arrow_downward,
                color: menuOrange,
              ),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          LimitedBox(
            maxHeight: 220.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(right: 10.0),
                padding: const EdgeInsets.all(10.0),
                width: cardWidth,
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  border: Border.all(color: menuOrange, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'No-contact Delivery',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                UIHelper.verticalSpaceExtraSmall(),
                                Text(
                                  'Have your order dropped of at your door or gate for added safety',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                          UIHelper.verticalSpaceExtraSmall(),
                          TextButton(
                            child: Text(
                              'Know More',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: darkOrange),
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    UIHelper.horizontalSpaceSmall(),
                    ClipOval(
                      child: Image.asset(
                        'assets/images/food3.jpg',
                        height: 90.0,
                        width: 90.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
