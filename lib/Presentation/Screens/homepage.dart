<<<<<<< HEAD
import 'package:flutter/material.dart';
=======
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_application/Presentation/Widgets/temprature_card.dart';
>>>>>>> Feature/Presentation

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  ),
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
                    const Text(
                      '📍 Kathmandu',
                      style: TextStyle(
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
                    Image.asset(
                      'Assets/Images/snow.png',
                    ),
                    Center(
                      child: Column(
                        children: [
                          const Text(
                            '35° C',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'SnowFall',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text(
                            'Friday 11 • 11:43 AM',
                            style: TextStyle(
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
                                  time: '4:38 AM',
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                TempratureCard(
                                  image: Image.asset(
                                    'Assets/Images/6.png',
                                    scale: 10,
                                  ),
                                  weatherType: 'Sunrise',
                                  time: '4:38 AM',
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
                                  time: '15° C',
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
                                  time: '7° C',
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
      ),
>>>>>>> Feature/Presentation
    );
  }
}
