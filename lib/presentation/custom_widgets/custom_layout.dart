import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:toyota/utils/app_properties.dart';

class CustomLayout extends StatelessWidget {
  final String appBarTitle;
  final Widget bodyWidget;
  const CustomLayout({
    super.key,
    required this.appBarTitle,
    required this.bodyWidget,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      leading: const Icon(
        Icons.menu,
        size: 30,
        color: Colors.white,
      ),
      title: Text(
        appBarTitle,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.messenger_outline_rounded,
            size: 30,
            color: Colors.white,
          ),
        ),
      ],
      headerExpandedHeight: 0.22,
      headerWidget: headerWidget(context),
      curvedBodyRadius: 0,
      body: [
        bodyWidget,
      ],
      fullyStretchable: true,
      backgroundColor: Colors.white,
      appBarColor: AppProperties.darkSlateGrey,
    );
  }

  Widget headerWidget(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: AppProperties.headerGradientColors)),
      child: Column(
        children: [
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                AppProperties.logoURL,
                height: 100,
                width: 100,
              ),
              Expanded(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 1,
                      height: 50,
                      child: Divider(
                        height: 5,
                        thickness: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "FLEET \nMANAGEMENT",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "DEMO DRIVER",
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 15, color: Colors.white70),
                ),
              ),
            ],
          ),
          Container(
            height: 65,
            color: AppProperties.darkSlateGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  appBarTitle,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.messenger_outline_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
