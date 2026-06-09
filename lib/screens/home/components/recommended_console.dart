import 'package:e_sky/app_properties.dart';
import 'package:e_sky/models/product.dart';
import 'package:e_sky/screens/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class RecommendedListConsole extends StatelessWidget {
  List<Product> products = [
    Product('assets/images/ps5.png', 'PS5', 'PS5 performance. In terms of specs, the PS5 is a technically impressive piece of hardware. There is the new custom RDNA 2 GPU that can push 4K resolution at 120 frames per second, and the octa-core AMD Zen 2-based CPU with a 3.5GHz clock speed.', 500),
    Product('assets/images/ps4.png', 'PS4', 'The good The PS4 Pro outputs a 4K- and HDR signal that is compatible with high-end TVs, and promises better visuals and increased frame rates for certain games. The console includes a 1TB hard drive, and it works with all PS4 games, apps and accessories to date.', 400),
    Product('assets/images/xboxx.png', 'Xbox series X', 'The Series X packs an 8-core 3.8-GHz AMD Zen 2-based CPU while the PS5 has an 8-core, 3.5-GHz AMD Zen 2-based CPU. Both systems have 16GB of GDDR6 RAM. The Series X has a leg up on GPUs and storage with a 12-teraflop AMD RDNA 2 GPU with 52 Compute Units (CU) and a 1TB custom NVMe SSD for storage.', 500),
    Product('assets/images/xboxs.png', 'Xbox series S', 'The Series X boasts a GPU with up to 12 teraflops of output, 16 GB RAM, 1 TB SSD storage and a 4K Blu-ray disc drive, the Series S has a GPU with up to 4 teraflops of output, 10 GB RAM, 512 GB SSD storage and no disc drive at all.', 300),
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
