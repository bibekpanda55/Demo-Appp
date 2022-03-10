import 'package:flutter/material.dart';
import 'package:technical_round/screens/landing_screen.dart';
import 'package:technical_round/screens/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!);
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'LexendDeca',
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: LandingScreen.routeName,
        routes: {
          LandingScreen.routeName: (_) => LandingScreen(),
          ProfileScreen.routeName: (_) => ProfileScreen()
        });
  }
}
