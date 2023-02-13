import 'package:flutter/material.dart';
import 'package:whats_app/global/global.dart';
import 'package:whats_app/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: normalPhoneTheme,
      routes: appRoutes,
      initialRoute: 'home',
    );
  }
}
