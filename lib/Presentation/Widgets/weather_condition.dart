import 'package:flutter/material.dart';

class WeatherCondition {
  Widget weatherCondition(int code) {
    switch (code) {
      case >= 200 && < 300:
        return Image.asset('Assets/Images/1.png');
      case >= 300 && < 400:
        return Image.asset('Assets/Images/2.png');
      case >= 500 && < 600:
        return Image.asset('Assets/Images/3.png');
      case >= 600 && < 700:
        return Image.asset('Assets/Images/snow.png');
      case >= 700 && < 800:
        return Image.asset('Assets/Images/5.png');
      case 800:
        return Image.asset('Assets/Images/6.png');

      case < 800 && >= 804:
        return Image.asset('Assets/Images/7.png');

      default:
        return Image.asset('Assets/Images/7.png');
    }
  }
}
