import 'package:flutter/material.dart';
import 'package:itksquare_project1/custom_widgets/myads_card.dart';
import 'dart:core';

import 'package:itksquare_project1/screens/EditAdScreen.dart';

class MyAdsScreen extends StatefulWidget {
  const MyAdsScreen({super.key});

  @override
  State<MyAdsScreen> createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen> {
  List myAds = [
    {
      "id": "ad_01",
      "title": "iPhone for Sale",
      "price": 19999,
      "createdBy": "Abi",
      "createdAt": "5 days ago",
      "mobile": "+919876543210",
      "description": "iPhone for sale with Good Condition",
      "images":
          "https://voluble-tulumba-4022f0.netlify.app/images/ad_01_01.jpeg",
    },
    {
      "id": "ad_02",
      "title": "Audi A6 for Sale",
      "price": 2000000,
      "createdBy": "Abi",
      "createdAt": "3 days ago",
      "mobile": "+919876543211",
      "description": "Audi A6 for Sale with Good Condition",
      "images":
          "https://voluble-tulumba-4022f0.netlify.app/images/ad_02_01.jpeg",
    },
    {
      "id": "ad_03",
      "title": "Tropical House for sale",
      "price": 5000000,
      "createdBy": "krish",
      "createdAt": "15 days ago",
      "mobile": "+919876983210",
      "description": "Tropical house for sale with fully furnished",
      "images":
          "https://voluble-tulumba-4022f0.netlify.app/images/ad_03_01.jpeg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Ads"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: myAds.length,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => EditAdScreen(
                                myAds: [myAds],
                              )));
                },
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid)),
                  margin: EdgeInsets.all(8),
                  child: Row(children: [
                    Container(
                        margin: EdgeInsets.only(right: 8),
                        child: Image.network(
                          myAds[index]["images"],
                          width: 100,
                        )),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: Text(
                            myAds[index]["title"],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                          Container(
                              margin: EdgeInsets.only(top: 4, bottom: 4),
                              child: Row(children: [
                                Icon(Icons.timer_outlined,
                                    size: 18, color: Colors.grey),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  myAds[index]["createdAt"],
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ])),
                          Container(
                              child: Text(
                            myAds[index]["price"].toString(),
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ))
                        ]),
                  ]),
                ),
              );
            })),
      ),
    );
  }
}
