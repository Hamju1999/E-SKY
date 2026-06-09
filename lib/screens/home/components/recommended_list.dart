import 'package:e_sky/app_properties.dart';
import 'package:e_sky/models/product.dart';
import 'package:e_sky/screens/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../size_config.dart';

class RecommendedListPC extends StatelessWidget {
  List<Product> products = [
    Product('assets/images/dell.png', 'Dell Optiplex 3050', 'Dell OptiPlex 3050 Desktop PC - Intel Core i3-7100/ 4GB RAM/ 500GB HDD/DOS', 312),
    Product('assets/images/acer.png', 'Acer Predator Orion 3000', 'Acer Predator Orion 3000 - Intel Core i5-9400F - 12 GB DDR4 - 512 GB SSD - GeForce GTX 1660 Ti - Windows 10 Home - Gaming Desktop', 970),
    Product('assets/images/hp.png', 'HP Pavilion', 'HP Pavilion Gaming Desktop - Intel Core i5-9400F, 8 GB DDR4, 256 GB SSD, GeForce GTX 1650, Windows 10 Home', 620),
    Product('assets/images/Lenovo.png', 'Lenovo Legion Tower 5', 'Lenovo Legion Tower 5 - Intel Core i5-10400F - 8 GB DDR4 - 1 TB HDD + 256 GB SSD - GeForce GTX 1650 SUPER - Windows 10 Home - Gaming Desktop', 699),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              IntrinsicHeight(
                child: Container(
                  margin: const EdgeInsets.only(left: 16.0, right: 18.0),
                  width: 4,
                  color: Color(0xFF5EB024),
                ),
              ),
              Center(
                  child: Text(
                'Recommended',
                style: TextStyle(
                    color: Color(0xFF5EB024),
                    fontSize: 18.0,
                    fontFamily: "Kalam",
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
              width: 60,
              ),
              IntrinsicHeight(
                child: Container(
                  margin: const EdgeInsets.only(left: 16.0, right: 8.0),
                  width: 4,
                  color: Color(0xFF5EB024),
                ),
              ),
              RaisedButton(
                child: Text('See More', style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: 'Kalam',
                ),),
                color: Colors.white,
                textColor: Color(0xFF5EB024),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: StaggeredGridView.countBuilder(
    physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              crossAxisCount: 4,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) => new ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ProductPage(product:products[index]))),
                      child: Container(
                          decoration: BoxDecoration(
                            gradient: RadialGradient(
                                colors: [Color(0xFF71A0E2), Color(0xFF71A0E2)],
                                center: Alignment(0, 0),
                                radius: 0.6,
                                focal: Alignment(0, 0),
                                focalRadius: 0.1),
                          ),
                          child: Hero(
                              tag: products[index].image,
                              child: Image.asset(products[index].image))),
                    ),
                  ),
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, index.isEven ? 3 : 2),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          ),
        ),
      ],
    );
  }
}
