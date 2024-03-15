import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';
import 'package:weather_application/Secrets/api_key.dart';

class WeatherService {
  Future<Weather> fetchWeather() async {
    WeatherFactory weatherFactory = WeatherFactory(
      weatherAPIKey,
      language: Language.ENGLISH,
    );
    Position postion = await Geolocator.getCurrentPosition();
    Weather weather = await weatherFactory.currentWeatherByLocation(
      postion.latitude,
      postion.longitude,
    );
    return weather;
  }
}
