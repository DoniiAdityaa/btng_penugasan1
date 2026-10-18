import 'package:flutter/material.dart';
import 'package:tugas1/core/di/injection.dart';
import 'package:tugas1/login_page.dart';
import 'package:tugas1/ui/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: background),
        fontFamily: 'Poppins',
      ),
      home: LoginPage(),
    );
  }
}
