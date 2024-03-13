import 'package:flutter/material.dart';

class TempratureCard extends StatelessWidget {
  final Image image;
  final String weatherType;
  final String time;
  const TempratureCard(
      {super.key,
      required this.image,
      required this.weatherType,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        image,
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              weatherType,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
            ),
            Text(
              time,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
