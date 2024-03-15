import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_application/Data/geo_locator_service.dart';
import 'package:weather_application/Data/weather_service.dart';
import 'package:weather_application/Presentation/Screens/homepage.dart';
import 'package:weather_application/bloc/weather_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
=======
    return FutureBuilder(
      future: GeoLocator().determinePosition(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return RepositoryProvider(
            create: (context) => WeatherService(),
            child: BlocProvider(
              create: (context) => WeatherBloc(
                context.read<WeatherService>(),
              ),
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Forecastify',
                theme: ThemeData(
                  scaffoldBackgroundColor: Colors.black,
                ),
                home: const HomePage(),
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
      },
>>>>>>> origin/Feature/Api-Integration
    );
  }
}
