import 'package:flutter/material.dart';

class MyAdsScreen extends StatefulWidget {
  const MyAdsScreen({super.key});

  @override
  State<MyAdsScreen> createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen> {
  List _myads = [
    {
      {
        "id": "ad_01",
        "title": "iPhone for Sale",
        "price": 19999,
        "createdBy": "Abi",
        "createdAt": "5 days ago",
        "mobile": "+919876543210",
        "description": "iPhone for sale with Good Condition",
        "images": [
          "https://voluble-tulumba-4022f0.netlify.app/images/ad_01_01.jpeg",
          "https://voluble-tulumba-4022f0.netlify.app/images/ad_01_02.jpeg",
        ]
      },
      {
        "id": "ad_02",
        "title": "Audi A6 for Sale",
        "price": 2000000,
        "createdBy": "Abi",
        "createdAt": "3 days ago",
        "mobile": "+919876543211",
        "description": "Audi A6 for Sale with Good Condition",
        "images": [
          "https://voluble-tulumba-4022f0.netlify.app/images/ad_02_01.jpeg",
          "https://voluble-tulumba-4022f0.netlify.app/images/ad_02_02.jpeg",
          "https://voluble-tulumba-4022f0.netlify.app/images/ad_02_03.jpeg",
        ]
      },
      {
        "id": "ad_03",
        "title": "Tripical House for sale",
        "price": 5000000,
        "createdBy": "krish",
        "createdAt": "15 days ago",
        "mobile": "+919876983210",
        "description": "Tropical house for sale with fully furnished",
        "images": [
          "https://voluble-tulumba-4022f0.netlify.app/images/ad_03_01.jpeg",
          "https://voluble-tulumba-4022f0.netlify.app/images/ad_03_02.png",
          "https://voluble-tulumba-4022f0.netlify.app/images/ad_03_03.jpeg",
        ]
      }
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(itemBuilder: ((context, index) {
          return Container();
        })),
      ),
    );
  }
}
