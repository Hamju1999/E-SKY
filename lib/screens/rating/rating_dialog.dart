import 'package:e_sky/app_properties.dart';
import 'package:e_sky/screens/shop/check_out_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    Widget payNow = InkWell(
      onTap: () async {
        Navigator.of(context).pop();
        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CheckOutPage()));

      },
      child: Container(
        height: 60,
        width: width / 1.5,
        decoration: BoxDecoration(
            gradient: mainButton,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(255, 255,255, 0.0),
                offset: Offset(0, 5),
                blurRadius: 10.0,
              )
            ],
            borderRadius: BorderRadius.circular(9.0)),
        child: Center(
          child: Text("Pay Now",
              style: const TextStyle(
                  color: const Color(0xfffefefe),
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0)),
        ),
      ),
    );

    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[50]),
          padding: EdgeInsets.all(24.0),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Text(
              'Thank You!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RichText(
                text: TextSpan(
                    style:
                        TextStyle(fontFamily: 'Kalam', color: Color(0xFF71A0E2)),
                    children: [
                      TextSpan(
                        text: 'You rated ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF71A0E2))
                      ),
                      TextSpan(
                          text: 'Xbox Series X',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF71A0E2)))
                    ]),
              ),
            ),
            FlutterRatingBar(
//                      borderColor: Color(0xffFF8993),
//                      fillColor: Color(0xffFF8993),

              itemSize: 32,
              allowHalfRating: false,
              initialRating: 1,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              fullRatingWidget:
                  Icon(Icons.favorite, color: Color(0xffFF8993), size: 32),
              noRatingWidget: Icon(Icons.favorite_border,
                  color: Color(0xffFF8993), size: 32),
              onRatingUpdate: (value) {
//              setState(() {
//                rating = value;
//              });

                print(value);
              },
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'Say something about the product.'),
                  style: TextStyle(fontSize: 12, color: Color(0xFF71A0E2)),
                  maxLength: 200,
                )),
            payNow
          ])),
    );
  }
}
