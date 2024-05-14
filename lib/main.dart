import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/pages/Detail.dart';
import 'package:flutter_application_1/pages/Editprofile.dart';
import 'package:flutter_application_1/pages/Home.dart';
import 'package:flutter_application_1/pages/changepicture.dart';
import 'package:flutter_application_1/pages/menu2.dart';
import 'package:flutter_application_1/pages/menu3.dart';
import 'package:flutter_application_1/pages/menu4.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_application_1/pages/Signup.dart';
import 'package:flutter_application_1/pages/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      routes: {
        '/signup': (context) => const SignupPage(),
        '/home': (context) => const HomePage(),
        '/tologin': (context) => const LoginPage(),
        '/edittopro': (context) => ProfilePage(),
        '/protoedit': (context) => EditProfilePage(),
        '/suggesttodetail': (context) => DetailPage(),
        '/changePicture': (context) => EditPicturePage(),
        '/menu2': (context) => Menu2Page(),
        '/menu3': (context) => Menu3Page(),
        '/menu4': (context) => Menu4Page(),
      },
    );
  }
}
