import 'package:e_sky/models/product.dart';
import 'package:e_sky/screens/product/components/rating_bottomSheet.dart';
import 'package:e_sky/screens/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app_properties.dart';
import 'components/product_options.dart';

class ViewProductPage extends StatefulWidget {
  final Product product;

  ViewProductPage({Key key, this.product}) : super(key: key);

  @override
  _ViewProductPageState createState() => _ViewProductPageState(product);
}

class _ViewProductPageState extends State<ViewProductPage> {
  final Product product;

  _ViewProductPageState(this.product);

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int active;

  ///list of product colors
  List<Widget> colors() {
    List<Widget> list = [];
    for (int i = 0; i < 5; i++) {
      list.add(
        InkWell(
          onTap: () {
            setState(() {
              active = i;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
            child: Transform.scale(
              scale: active == i ? 1.2 : 1,
              child: Card(
                elevation: 3,
                color: Colors.primaries[i],
                child: SizedBox(
                  height: 32,
                  width: 32,
                ),
              ),
            ),
          ),
        ),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    Widget description = Padding(
      padding: const EdgeInsets.all(24.0),
      child: Text(
        product.description,
        maxLines: 5,
        semanticsLabel: '...',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Color(0xFF71A0E2)),
      ),
    );

    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Color(0xFF43ad53)),
          actions: <Widget>[
            IconButton(
              icon: new SvgPicture.asset('assets/icons/search_icon.svg', fit: BoxFit.scaleDown,)
            )
          ],
          title: Text(
            'Product Information',
            style: const TextStyle(
                color: Color(0xFF43ad53),
                fontWeight: FontWeight.w500,
                fontFamily: "Kalam",
                fontSize: 18.0),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                ProductOption(
                  _scaffoldKey,
                  product: product,
                ),
                description,
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    RawMaterialButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return RatingBottomSheet();
                            },
                            //elevation: 0,
                            //backgroundColor: Colors.transparent
                        );
                      },
                      constraints:
                          const BoxConstraints(minWidth: 45, minHeight: 45),
                      child: Icon(Icons.favorite,
                          color: Colors.red),
                      elevation: 0.0,
                      shape: CircleBorder(),
                      fillColor: Color.fromRGBO(255, 255, 255, 0.4),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}
