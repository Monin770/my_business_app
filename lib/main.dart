import 'package:flutter/material.dart';
import 'package:my_business_app/models/cart.dart';
import 'package:my_business_app/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(
        child: Scaffold(
          
         ),
        ),
       ),
     );
  }
}