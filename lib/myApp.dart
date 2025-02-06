import 'package:flutter/material.dart';
import 'package:todo/ui/screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Home.routeName:(_)=>Home()
      },
      initialRoute: Home.routeName,
    );
  }
}