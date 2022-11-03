import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController _nameCtrl = TextEditingController();
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _mobileCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(children: [
          CircleAvatar(
            radius: 45,
            backgroundColor: Colors.black,
            child: Image.asset(
              "images/profilephoto.png",
              height: 60,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Your Name',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
            //initialValue: "Denia",
            controller: _nameCtrl,
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'email@example.com',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
            // initialValue: "denia@gmail.com",
            controller: _emailCtrl,
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Phone Number',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
            // initialValue: "+52999888777666",
            controller: _mobileCtrl,
          ),
          Container(
            margin: EdgeInsets.only(top: 32, bottom: 16),
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Update Profile"),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: TextButton(
              onPressed: () {},
              child: Text("Logout"),
            ),
          ),
        ]),
      ),
    );
  }
}
