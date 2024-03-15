<<<<<<< HEAD
import 'package:flutter/material.dart';
=======
import 'dart:ui';

import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:weather_application/Presentation/Widgets/temprature_card.dart';
>>>>>>> Feature/Presentation
=======
>>>>>>> origin/Feature/Api-Integration

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_application/Presentation/Widgets/temprature_card.dart';
import 'package:weather_application/Presentation/Widgets/weather_condition.dart';
import 'package:weather_application/bloc/weather_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<WeatherBloc>().add(WeatherFetched());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
<<<<<<< HEAD
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Forecastify',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Column(
        children: [
          Text(
            'Good Morning',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        ],
      ),
=======
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 250,
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    shape: BoxShape.circle,
=======
    return Scaffold(body: BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        if (state is WeatherFailure) {
          return const Center(
            child: Text(
              'There is an Issue',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          );
        }
        if (state is! WeatherSuccess) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
        final weatherData = state.weather;
        final sunrise = weatherData.sunrise!;
        final sunset = weatherData.sunset!;

        final temprature = weatherData.temperature!.celsius!.round();
        final minTemprature = weatherData.tempMin!.celsius!.round();
        final maxTemprature = weatherData.tempMax!.celsius!.round();
        final dateTime = weatherData.date;
        final weatherCondition = weatherData.weatherConditionCode;
        final location = weatherData.areaName;
        final weatherType = weatherData.weatherMain;

        return Padding(
          padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(3, -0.3),
                  child: Container(
                    height: 300,
                    width: 250,
                    decoration: const BoxDecoration(
                      color: Colors.deepPurple,
                      shape: BoxShape.circle,
                    ),
>>>>>>> origin/Feature/Api-Integration
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-3, -0.3),
                  child: Container(
                    height: 300,
                    width: 250,
                    decoration: const BoxDecoration(
                      color: Colors.deepPurple,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, -1.2),
                  child: Container(
                    height: 300,
                    width: 650,
                    decoration: const BoxDecoration(
                      color: Colors.orangeAccent,
                    ),
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 100.0,
                    sigmaY: 100.0,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        location!,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Good Morning',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      WeatherCondition().weatherCondition(weatherCondition!),
                      Center(
                        child: Column(
                          children: [
                            Text(
                              '$temprature°C',
                              style: const TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              weatherType!,
                              style: const TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              DateFormat('EEEE dd •')
                                  .add_jm()
                                  .format(dateTime!),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Row(
                                children: [
                                  TempratureCard(
                                    image: Image.asset(
                                      'Assets/Images/6.png',
                                      scale: 10,
                                    ),
                                    weatherType: 'Sunrise',
                                    time: DateFormat().add_jm().format(sunrise),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  TempratureCard(
                                    image: Image.asset(
                                      'Assets/Images/set.png',
                                      scale: 10,
                                    ),
                                    weatherType: 'Sunset',
                                    time: DateFormat().add_jm().format(sunset),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  TempratureCard(
                                    image: Image.asset(
                                      'Assets/Images/13.png',
                                      scale: 10,
                                    ),
                                    weatherType: 'Tempo Max',
                                    time: '$maxTemprature°C',
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  TempratureCard(
                                    image: Image.asset(
                                      'Assets/Images/14.png',
                                      scale: 10,
                                    ),
                                    weatherType: 'Tempo Min',
                                    time: '$minTemprature°C',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
<<<<<<< HEAD
        ),
      ),
>>>>>>> Feature/Presentation
    );
=======
        );
      },
    ));
>>>>>>> origin/Feature/Api-Integration
  }
}
