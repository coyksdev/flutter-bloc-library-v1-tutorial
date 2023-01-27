import 'package:flutter/material.dart';
import 'package:flutter_bloc_library_v1_tutorial/data/weather_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_repository_provider.g.dart';

@riverpod
WeatherRepository weatherRepository(WeatherRepositoryRef ref) {
  debugPrint("weatherRepository");
  return FakeWeatherRepository();
}
