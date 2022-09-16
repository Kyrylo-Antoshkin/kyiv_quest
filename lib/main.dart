import 'package:flutter/material.dart';
import 'app/main_opened/main_opened.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xff1C236C),
        iconTheme: const IconThemeData(
          color: Color(0xffD0D4FF),
        ),
      ),
      home: MainOpened(),
    );
  }
}
