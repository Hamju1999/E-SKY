import 'package:e_sky/app_properties.dart';
import 'package:e_sky/models/product.dart';
import 'package:e_sky/screens/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class RecommendedListLaptop extends StatelessWidget {
  List<Product> products = [
    Product('assets/images/dell1.png', 'Dell Inspiron 7000', 'Dell Inspiron 7000 2-in-1 13.3" Full HD 10-Point Multitouch IPS Laptop | Intel Core i5-8250U Quad-Core| 8GB DDR4 Ram | 256GB M.2 SSD | Backlit keyboard | MaxxAudio | HDMI |Windows 10 | Era Gray', 760),
    Product('assets/images/acer1.png', 'Acer Nitro 5', 'Acer Nitro 5 - 15.6" - Intel Core i5-10300H - GeForce GTX 1650 - 8 GB DDR4 - 512 GB SSD - Windows 10 Home - Gaming Laptop', 769),
    Product('assets/images/hp1.png', 'HP OMEN 15', 'HP OMEN 15 (2020) - 15.6" FHD - Intel Core i7-10750H - GeForce RTX 2060 - 16 GB DDR4 - 512 GB SSD - Gaming Laptop', 1250),
    Product('assets/images/Lenovo1.png', 'Lenovo IdeaPad Flex 5', 'Lenovo IdeaPad Flex 5 14IIL05 81X1000AUS Intel Core i5 10th Gen 1035G1 (1.00 GHz) 8 GB Memory 512 GB PCIe SSD Intel UHD Graphics 14" Touchscreen 1920 x 1080 Convertible 2-in-1 Laptop Windows 10 Home 64-bit', 704),
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
                  margin: const EdgeInsets.only(left: 16.0, right: 8.0),
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
