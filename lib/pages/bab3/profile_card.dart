// Profile Card - import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bab 3 - Profile"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
            width: 300,
            padding: const EdgeInsets.all(20.0),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 16.0),
                Text(
                  'Alif dan Bowo',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'SMK IDN TERBAIK',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.facebook, size: 30.0, color: Colors.blue),
                    Icon(Icons.camera_alt, size: 30.0, color: Colors.pink),
                    Icon(Icons.link, size: 30.0, color: Colors.black),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// alip