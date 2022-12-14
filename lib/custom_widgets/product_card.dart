import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  String name;
  var price;
  String imageUrl;

  ProductCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.price,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Stack(children: [
        Image.network(
          widget.imageUrl,
          fit: BoxFit.fitWidth,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            height: 65,
            color: Color.fromARGB(158, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  widget.price.toString(),
                  style: TextStyle(
                      color: Color.fromARGB(255, 240, 168, 34),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
