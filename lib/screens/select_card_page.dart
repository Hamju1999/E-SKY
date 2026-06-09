import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:e_sky/app_properties.dart';
import 'package:flutter/services.dart';

class SelectCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 1.2;
    double cardHeight = 200;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color(0xFF43ad53),
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          title: Text(
            'Select Card',
            style: TextStyle(color: Color(0xFF43ad53)),
          ),
          elevation: 0,
        ),
        body: Center(
          child: SizedBox(
            width: width,
            height: MediaQuery.of(context).size.height / 1.4,
            child: Stack(
              alignment: Alignment(0, -0.5),
              children: <Widget>[
                Transform.rotate(
                  angle: math.pi / 2,
                  child: Container(
                    padding: EdgeInsets.all(32),
                    width: MediaQuery.of(context).size.height / 1.4,
                    height: width - 10,
                    decoration: BoxDecoration(
                        color: Color(0xFF43ad53),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: shadow),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('CREDIT CARD',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: Container(
                            height: 35,
                            width: 50,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Text('4452 - 8645 - 4524 - 2413',
                            style: TextStyle(
                                color:Colors.white,
                                fontSize: 18.0)),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 64,
                  child: Container(
                    height: cardHeight,
                    width: width,
                    decoration: BoxDecoration(
                        color: Color(0xFF71A0E2),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: shadow),
                  ),
                ),
                Positioned(
                  bottom: 32,
                  child: Container(
                    height: cardHeight,
                    width: width,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFA53E),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: shadow),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                      alignment: Alignment(0, 0),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 24.0),
                      height: cardHeight,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: shadow),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              CircleAvatar(
                                maxRadius: 16,
                                backgroundImage:
                                    AssetImage('assets/images/background.jpg'),
                              ),
                              SizedBox(width: 8.0),
                              Text('Rami',
                                  style: TextStyle(
                                    color: Color(0xFF71A0E2),
                                  ))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text('Emirates NBD',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0)),
                              SizedBox(height: 8.0),
                              Text('4452-8645-4524-2413',
                                  style: TextStyle(
                                      color: Color(0xFF71A0E2), fontSize: 14.0))
                            ],
                          ),
                          Flexible(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 90,
                                  padding: const EdgeInsets.fromLTRB(
                                      24.0, 16.0, 24.0, 16.0),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Colors.white),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    keyboardType:
                                        TextInputType.number,
                                      inputFormatters:[
                                        LengthLimitingTextInputFormatter(3),
                                      ],
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.zero,
                                        hintText: 'CVV',
                                        hintStyle:
                                            TextStyle(color: Color(0xFF71A0E2)),
                                        border: InputBorder.none),
                                  ),
                                )),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('This will be deducted',
                                  style: TextStyle(
                                      color: Color(0xFF71A0E2), fontSize: 14.0)),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '\$ ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10.0),
                                  ),
                                  Text(
                                    '312.00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
