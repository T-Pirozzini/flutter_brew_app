// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_brew_app/screens/wrapper.dart';

void main() {  
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
    );
  }
}
