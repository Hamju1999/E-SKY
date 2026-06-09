import 'package:e_sky/app_properties.dart';
import 'package:e_sky/models/product.dart';
import 'package:e_sky/screens/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class RecommendedListPhone extends StatelessWidget {
  List<Product> products = [
    Product('assets/images/12 pro.jpg', 'iPhone 12 Pro Max', '5G speed. A14 Bionic, the fastest chip in a smartphone. And a Pro camera system that takes low-light photography to the next level — with an even bigger jump on iPhone 12 Pro Max.', 1280),
    Product('assets/images/note20.jpg', 'Samsung Galaxy Note20 Ultra 5G', 'Samsung Galaxy Note 20 Ultra is powered by a 2.4GHz octa-core Samsung Exynos 990 processor that features 4 cores clocked at 2.4GHz and 4 cores clocked at 1.8GHz. It comes with 12GB of RAM.', 1400),
    Product('assets/images/oneplus_8_pro.png', 'OnePlus 8 Pro', 'The OnePlus 8 Pro is an IP68 rated phone that is resistant to dust and water. It comes with an impressive 6.78-inch AMOLED panel that has a resolution of 1440x3168 pixels with high color accuracy and HDR10+ support. Also, it can run at 120Hz at the QHD+ resolution. The display of the phone is vibrant, colorful, and bright.', 999),
    Product('assets/images/asus.png', 'Asus ROG Phone 3', 'The Asus ROG Phone 3 is designed primarily for gaming but tries to be a well-rounded flagship-class phone. It is large and heavy thanks to its 6000mAh battery and cooling apparatus, but is also extremely powerful with its Snapdragon 865+ SoC. You get fast RAM and storage, plus a full-HD+ AMOLED panel with a 144Hz refresh rate and HDR10+ support. Asus has also customised the ROG Phone 3 with its ultrasonic AirTriggers that act as physical gamepad-like buttons for games.', 1600),
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
