import 'package:flutter/material.dart';
import 'package:itksquare_project1/custom_widgets/product_card.dart';
import 'package:itksquare_project1/screens/CreateAdScreen.dart';
import 'package:itksquare_project1/screens/settingsScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List _ads = [
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
    },
    {
      "id": "ad_04",
      "title": "Macbook Pro for Sale",
      "price": 49999,
      "createdBy": "guru",
      "createdAt": "1 days ago",
      "mobile": "+917876543210",
      "description":
          "Macbook pro for sale. 12GB RAM | 512GB SSD | Ratina Display",
      "images": [
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_04_01.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_04_02.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_04_03.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_04_04.jpeg",
      ]
    },
    {
      "id": "ad_05",
      "title": "Stylish Sofa for sale",
      "price": 30999,
      "createdBy": "rakei",
      "createdAt": "7 days ago",
      "mobile": "+919876586210",
      "description": "Stylish sofa for sale with multiple colors",
      "images": [
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_05_01.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_05_02.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_05_03.jpeg",
        "https://voluble-tulumba-4022f0.netlify.app/images/ad_05_04.jpeg"
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ads Listing"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => SettingsScreen())));
            },
            child: CircleAvatar(
              radius: 25,
              child: Image.asset("images/profilephoto.png"),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_a_photo_outlined),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => CreateAdScreen())));
          }),
      body: SafeArea(
        child: Container(
            child: GridView.builder(
                itemCount: _ads.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 4),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: ProductCard(
                      imageUrl: _ads[index]['images'][0],
                      name: _ads[index]["title"].toString(),
                      price: _ads[index]['price'],
                    ),
                  );
                })),
      ),
    );
  }
}
