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
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(4),
        child: Stack(children: [
          // Image.network(
          //   widget.imageUrl,
          //   fit: BoxFit.cover,
          // ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              height: 60,
              color: Color.fromARGB(108, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(widget.name), Text(widget.price.toString())],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
