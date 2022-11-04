import 'package:flutter/material.dart';
import 'package:itksquare_project1/screens/EditProfileScreen.dart';
import 'package:itksquare_project1/screens/MyAdsScreen.dart';
import 'package:url_launcher/url_launcher.dart';

//URL LAUNCHER
final Uri _url1 = Uri.parse("https://appmaking.com/about");
final Uri _url2 = Uri.parse("https://appmaking.com/contact");

Future<void> _launchUrl(Uri) async {
  if (!await launchUrl(Uri)) {
    throw 'Could not launch $Uri';
  }
}

//MAIN WIDGET
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Settings"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: Column(children: [
          Row(children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.black,
              child: Image.asset(
                "images/profilephoto.png",
                height: 50,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Denia",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("99988877766")
                ]),
            Container(
                margin: EdgeInsets.only(left: 110),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  EditProfileScreen()));
                    },
                    child: Text("Edit"))),
          ]),
          Container(
            margin: EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 16),
            child: Column(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => MyAdsScreen()));
                },
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 24),
                        child: Icon(Icons.addchart_sharp)),
                    Text("My Ads")
                  ],
                ),
              ),
              GestureDetector(
                onTap: (() {
                  _launchUrl(_url1);
                }),
                child: Container(
                  margin: EdgeInsets.only(top: 32, bottom: 32),
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 24),
                          child: Icon(Icons.account_circle_rounded)),
                      Text("About Us")
                    ],
                  ),
                ),
              ),
              Row(children: [
                GestureDetector(
                  onTap: () {
                    _launchUrl(_url2);
                  },
                  child: Container(
                      margin: EdgeInsets.only(right: 24),
                      child: Icon(Icons.contacts)),
                ),
                Text("Contact Us")
              ]),
            ]),
          ),
        ]),
      ),
    );
  }
}
