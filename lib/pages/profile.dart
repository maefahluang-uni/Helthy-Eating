import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/pages/componant/bottombar.dart';
import 'package:flutter_application_1/pages/componant/toast.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile', style: TextStyle(color: Colors.white)),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green[700], // Set app bar background color
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: FirebaseAuth.instance.currentUser != null &&
                        FirebaseAuth.instance.currentUser!.photoURL != null
                    ? NetworkImage(
                        FirebaseAuth.instance.currentUser!.photoURL!)
                    : AssetImage('assets/people.jpg') as ImageProvider<Object>?,
              ),
              SizedBox(height: 20),
              Text(
                FirebaseAuth.instance.currentUser!.displayName ?? '',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                FirebaseAuth.instance.currentUser!.email ?? '',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/protoedit');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow, // Set the button color to yellow
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushNamed(context, '/tologin');
                  showToast(message: 'Successfully signed out');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Set the button color to red
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(currentIndex: 3),
    );
  }
}
