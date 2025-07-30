import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_start/firebase_options.dart';
// import 'package:firebase_start/home.dart';
import 'package:firebase_start/phoneauth.dart';
import 'package:firebase_start/showdata.dart';
import 'package:flutter/material.dart';

void main() async {
  //Firebase initialization
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Showdata(),
    );
  }
}
