import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EditAdScreen extends StatefulWidget {
  List? myAds;

  EditAdScreen({super.key, required List myAds});

  @override
  State<EditAdScreen> createState() => _EditAdScreenState();
}

class _EditAdScreenState extends State<EditAdScreen> {
  TextEditingController _titleCtrl = TextEditingController();
  TextEditingController _priceCtrl = TextEditingController();
  TextEditingController _mobileCtrl = TextEditingController();
  TextEditingController _descriptionCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Ad"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(children: [
          Container(
            height: 80,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add_a_photo_outlined),
              label: Text("Tap to Upload"),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: 60,
                width: 60,
                child: Image.network(widget.myAds![index]["images"]),
              );
            },
          ),
          TextFormField(
            // initialValue: widget.myAds!["title"],
            decoration: InputDecoration(
                hintText: 'Title',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
            controller: _titleCtrl,
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Price',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
            controller: _priceCtrl,
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Phone Number',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
            controller: _mobileCtrl,
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            maxLines: 3,
            decoration: InputDecoration(
                hintText: 'Description',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
            controller: _descriptionCtrl,
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              child: Text("Submit Ad"),
              onPressed: () {},
            ),
          )
        ]),
      ),
    );
  }
}
