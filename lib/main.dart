import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotifyapi/pages/details.dart';
import 'package:spotifyapi/pages/homescreen.dart';
import 'package:spotifyapi/pages/profile.dart';
import 'package:spotifyapi/provider/category_provider.dart';
import 'package:spotifyapi/widgets/navigationbar.dart';


void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<CategoryProvider>(create: (_)=>CategoryProvider())
  ],child:const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Navbar(),
    );
  }
}

