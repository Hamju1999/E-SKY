import 'package:e_sky/app_properties.dart';
import 'package:e_sky/models/category.dart';
import 'package:e_sky/screens/home/components/recommended_console.dart';
import 'package:e_sky/screens/home/components/recommended_laptop.dart';
import 'package:e_sky/screens/home/components/recommended_phone.dart';

import 'package:flutter/material.dart';

import 'category_card.dart';
import 'recommended_list.dart';

class TabView extends StatelessWidget {

  final TabController tabController;

  TabView({Key key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height / 9);
    return TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 16.0,
                ),
                Flexible(child: RecommendedListPC()),
              ],
            ),
          ),
          Column(children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            Flexible(child: RecommendedListLaptop())
          ]),
          Column(children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            Flexible(child: RecommendedListPhone())
          ]),
          Column(children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            Flexible(child: RecommendedListConsole())
          ]),
        ]);
  }
}
