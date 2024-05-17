import 'package:flutter/material.dart';
import 'package:website_2/MobileView/MobileHomePage.dart';
import 'package:website_2/Web_view/Pages/WebHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MediaQuery.of(context).size.width > 1010 && MediaQuery.of(context).size.height > 500 ? const WebHomePage() : const MobileHomePage(),
    );
  }
}
