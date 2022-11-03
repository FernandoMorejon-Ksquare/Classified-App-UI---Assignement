import 'package:flutter/material.dart';

class CreateAdScreen extends StatefulWidget {
  const CreateAdScreen({super.key});

  @override
  State<CreateAdScreen> createState() => _CreateAdScreenState();
}

class _CreateAdScreenState extends State<CreateAdScreen> {
  TextEditingController _titleCtrl = TextEditingController();
  TextEditingController _priceCtrl = TextEditingController();
  TextEditingController _mobileCtrl = TextEditingController();
  TextEditingController _descriptionCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Ad"),
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
          TextFormField(
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
