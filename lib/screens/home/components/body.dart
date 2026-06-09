import 'package:e_sky/models/product.dart';
import 'package:e_sky/custom_background.dart';
import 'package:e_sky/category/category_list_page.dart';
import 'package:e_sky/screens/notifications_page.dart';
import 'package:e_sky/screens/profile_page.dart';
import 'package:e_sky/screens/search_page.dart';
import 'package:e_sky/shop/check_out_page.dart';
import 'package:e_sky/screens/tracking_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../../size_config.dart';
import 'custom_bottom_bar.dart';
import 'product_list.dart';
import 'tab_view.dart';
import 'package:e_sky/screens/search_page.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin<Body> {
  SwiperController swiperController;
  TabController tabController;
  TabController bottomTabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    bottomTabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Widget appBar = Container(
      height: kToolbarHeight + MediaQuery.of(context).padding.top,
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(22)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SearchPage(),
          IconButton(
              iconSize: 30,
              color: Color(0xFF5EB024),
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => NotificationsPage())),
              icon: Icon(Icons.notifications)),
          IconButton(
            iconSize: 30,
            icon: Icon(Icons.edit),
            color: Color(0xFF5EB024),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      scrollable: true,
                      title: Text('Add a Product',
                          style: TextStyle(
                              color: Color(0xFF71A0E2), fontSize: 23)),
                      content: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Product Name',
                                  icon: Icon(Icons.personal_video,
                                      color: Color(0xFF5EB024)),
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Description',
                                  icon: Icon(Icons.description,
                                      color: Color(0xFF5EB024)),
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Price',
                                  icon: Icon(Icons.attach_money,
                                      color: Color(0xFF5EB024)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      actions: [
                        RaisedButton(
                            color: Color(0xFF5EB024),
                            child: Text("Submit",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            onPressed: () {})
                      ],
                    );
                  });
            },
          )
        ],
      ),
    );


    Widget topHeader = Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
          ],
        ));

    Widget tabBar = TabBar(
      tabs: [
        Tab(text: 'PC'),
        Tab(text: 'Laptop'),
        Tab(text: 'Mobile Phones'),
        Tab(text: 'Gaming Console'),
      ],
      labelStyle: TextStyle(fontSize: 20.0, fontFamily: "Kalam"),
      unselectedLabelStyle: TextStyle(fontSize: 20.0, fontFamily: "Kalam"),
      labelColor: Color(0xFF5EB024),
      unselectedLabelColor: Color.fromRGBO(0, 0, 0, 0.5),
      isScrollable: true,
      controller: tabController,
    );

    return Scaffold(
      bottomNavigationBar: CustomBottomBar(controller: bottomTabController),
      body: CustomPaint(
        painter: MainBackground(),
        child: TabBarView(
          controller: bottomTabController,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            SafeArea(
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  // These are the slivers that show up in the "outer" scroll view.
                  return <Widget>[
                    SliverToBoxAdapter(
                      child: appBar,
                    ),
                    SliverToBoxAdapter(
                      child: topHeader,
                    ),
                    SliverToBoxAdapter(
                      child: tabBar,
                    )
                  ];
                },
                body: TabView(
                  tabController: tabController,
                ),
              ),
            ),
            CategoryListPage(),
            CheckOutPage(),
            ProfilePage()
          ],
        ),
      ),
    );
  }
}
