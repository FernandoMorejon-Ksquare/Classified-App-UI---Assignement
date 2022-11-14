import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  String title = "";
  int price = 0;
  String imageUrl;
  String seller = "";
  String timesAgo = "";
  String productDescription = "";

  ProductDetailScreen({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.seller,
    required this.timesAgo,
    required this.productDescription,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Text(widget.title),
            Text(widget.price.toString()),
            Image.network(widget.imageUrl),
            Row(
              children: [
                Icon(Icons.person),
                Text(widget.seller),
                Icon(Icons.timer_outlined),
                Text(widget.timesAgo)
              ],
            ),
            Text(widget.productDescription),
            ElevatedButton(onPressed: () {}, child: Text("Contact Seller"))
          ],
        ),
      ),
    );
  }
}
