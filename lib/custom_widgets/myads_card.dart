import 'package:flutter/material.dart';

class AdsCard extends StatefulWidget {
  String imageUrl;
  String title;
  String createdAt;
  num price;

  AdsCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.createdAt,
    required this.price,
  });

  @override
  State<AdsCard> createState() => _AdsCardState();
}

class _AdsCardState extends State<AdsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Row(children: [
        Image.asset(widget.imageUrl),
        Column(children: [
          Text(widget.title),
          Text(widget.createdAt),
          Text(widget.price.toString())
        ]),
      ]),
    );
  }
}
