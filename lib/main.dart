import 'package:flutter/material.dart';
import 'package:med_app/screens/profile_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MedApp',
      theme: ThemeData(
        backgroundColor: Color(0xFFF9F9FB),
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ProfileScreen.id: (context) => ProfileScreen(tagId: 'Ben',)
      },
    );
  }
}


