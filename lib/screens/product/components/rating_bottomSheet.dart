import 'package:e_sky/app_properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class RatingBottomSheet extends StatefulWidget {
  @override
  _RatingBottomSheetState createState() => _RatingBottomSheetState();
}

class _RatingBottomSheetState extends State<RatingBottomSheet> {
  double rating = 0.0;
  List<int> ratings = [4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Color(0xFF5EB024)),
          elevation: 0.0,
          actions: <Widget>[
          ],
        ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (b, constraints) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            height: 92,
                            width: 92,
                            decoration: BoxDecoration(
                                color: Color(0xFF5EB024),
                                shape: BoxShape.circle,
                                boxShadow: shadow,
                                border:
                                Border.all(width: 8.0, color: Colors.white)),
                            child: Image.asset('assets/images/dell.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 72.0, vertical: 16.0),
                            child: Text(
                              'Dell 3050',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                '4.8',
                                style: TextStyle(fontSize: 48),
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                FlutterRatingBar(
//                      borderColor: Color(0xffFF8993),
//                      fillColor: Color(0xffFF8993),
                                  ignoreGestures: true,
                                  itemSize: 20,
                                  allowHalfRating: true,
                                  initialRating: 4,
                                  itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                                  fullRatingWidget: Icon(
                                    Icons.favorite,
                                    color: Color(0xffFF8993),
                                    size: 20,
                                  ),
                                  noRatingWidget: Icon(Icons.favorite_border,
                                      color: Color(0xffFF8993), size: 20),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                      rating = value;
                                    });
                                    print(value);
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text('from 50 people'),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Align(
                            alignment: Alignment(-1, 0),
                            child: Text('Recent Reviews')),
                      ),
                      Column(
                        children: <Widget>[
                          ...ratings
                              .map((val) => Container(
                              margin:
                              const EdgeInsets.symmetric(vertical: 4.0),
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(right: 16.0),
                                    child: CircleAvatar(
                                      maxRadius: 14,
                                      backgroundImage:
                                      AssetImage('assets/images/background.jpg'),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              'Rami',
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.bold),
                                            ),
                                            Text(
                                              '10 PM, Via IOS',
                                              style: TextStyle(
                                                  color: Color(0xFF71A0E2),
                                                  fontSize: 14.0),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: FlutterRatingBar(
//                                borderColor: Color(0xffFF8993),
//                                fillColor: Color(0xffFF8993),
                                            ignoreGestures: true,
                                            itemSize: 20,
                                            allowHalfRating: true,
                                            initialRating: val.toDouble(),
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 4.0),
                                            fullRatingWidget: Icon(
                                              Icons.favorite,
                                              color: Color(0xffFF8993),
                                              size: 14,
                                            ),
                                            noRatingWidget: Icon(
                                                Icons.favorite_border,
                                                color: Color(0xffFF8993),
                                                size: 14),
                                            onRatingUpdate: (value) {
                                              setState(() {
                                                rating = value;
                                              });
                                              print(value);
                                            },
                                          ),
                                        ),
                                        Text(
                                          'It is a good PC',
                                          style: TextStyle(
                                            color: Color(0xFF71A0E2),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 16.0),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                '15 likes',
                                                style: TextStyle(
                                                    color: Color(0xFF71A0E2),
                                                    fontSize: 14.0),
                                              ),
                                              Text(
                                                '1 Comment',
                                                style: TextStyle(
                                                    color: Color(0xFF71A0E2),
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize: 14.0),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )))
                              .toList()
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
