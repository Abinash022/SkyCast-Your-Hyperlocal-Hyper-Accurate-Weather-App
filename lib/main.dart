import 'package:flutter/material.dart';
import 'package:weather_application/Presentation/Screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forecastify',
<<<<<<< HEAD
      theme: ThemeData.dark(),
=======
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
>>>>>>> Feature/Presentation
      home: const HomePage(),
    );
  }
}
