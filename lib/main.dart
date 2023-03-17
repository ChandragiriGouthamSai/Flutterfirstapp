

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'authentication/splash_screen.dart';

// Import the firebase_core plugin



void main(){
  WidgetsFlutterBinding.ensureInitialized();

Firebase.initializeApp();

  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

    @override
    Widget  build(BuildContext context) {
      return MaterialApp(
        title: 'flutter demo',
        theme: ThemeData(

        ),
      );
    }
  }

