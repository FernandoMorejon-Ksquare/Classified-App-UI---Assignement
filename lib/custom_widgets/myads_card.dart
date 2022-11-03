import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
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
        child: Row(children: [
          Image.asset(""),
          Column(
            children: [Text(""), Text(""), Text("")],
          )
        ]),
      ),
    );
  }
}
