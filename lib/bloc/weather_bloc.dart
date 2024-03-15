// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/weather.dart';
import 'package:weather_application/Data/weather_service.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherService weatherService;
  WeatherBloc(this.weatherService) : super(WeatherInitial()) {
    on<WeatherFetched>(_getCurrentWeather);
  }
  void _getCurrentWeather(
    WeatherFetched event,
    Emitter<WeatherState> emitter,
  ) async {
    try {
      emit(WeatherLoading());
      final weather = await weatherService.fetchWeather();
      emit(WeatherSuccess(weather));
    } catch (e) {
      emit(WeatherFailure());
    }
  }
}
