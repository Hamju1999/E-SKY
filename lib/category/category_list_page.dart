import 'package:e_sky/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/staggered_category_card.dart';

class CategoryListPage extends StatefulWidget {
  @override
  _CategoryListPageState createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  List<Category> categories = [
    Category(
      Color(0xFF5EB024),
      Color(0xFF5EB024),
      'PC',
      'assets/images/hp.png',
    ),
    Category(
      Color(0xFF5EB024),
      Color(0xFF5EB024),
      'Laptop',
      'assets/images/dell1.png',
    ),
    Category(
      Color(0xFF5EB024),
      Color(0xFF5EB024),
      'Gaming Console',
      'assets/images/xboxx.png',
    ),
    Category(
      Color(0xFF5EB024),
      Color(0xFF5EB024),
      'Mobile Phone',
      'assets/images/note20.jpg',
    ),
    Category(
      Color(0xFF5EB024),
      Color(0xFF5EB024),
      'Tablet',
      'assets/images/ipad.png',
    ),
    Category(
      Color(0xFF5EB024),
      Color(0xFF5EB024),
      'TV',
      'assets/images/lgcx.png',
    ),
  ];

  List<Category> searchResults;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchResults = categories;
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffF9F9F9),
      child: Container(
                  margin: const EdgeInsets.only(top: kToolbarHeight),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Align(
                        alignment: Alignment(-1, 0),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            'Category List',
                            style: TextStyle(
                              color: Color(0xFF5EB024),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller:searchController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              prefixIcon: SvgPicture.asset('assets/icons/search_icon.svg', fit: BoxFit.scaleDown,)
                          ),
                          onChanged: (value) {
                            if(value.isNotEmpty) {
                              List<Category> tempList = List<Category>();
                              categories.forEach((category) {
                                if(category.category.toLowerCase().contains(value)) {
                                  tempList.add(category);
                                }
                              });
                              setState(() {
                                searchResults.clear();
                                searchResults.addAll(tempList);
                              });
                              return;
                            } else {
                              setState(() {
                                searchResults.clear();
                                searchResults.addAll(categories);
                              });
                            }
                          },
                        ),
                      ),
                      Flexible(
                        child: ListView.builder(
                          itemCount: searchResults.length,
                          itemBuilder: (_, index) => Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0,),
                            child: StaggeredCardCard(
                              begin: searchResults[index].begin,
                              end: searchResults[index].end,
                              categoryName: searchResults[index].category,
                              assetPath: searchResults[index].image,
                            ),
                          ),
                        ),
                      )
                    ],

            ),
      ),
    );
  }
}

