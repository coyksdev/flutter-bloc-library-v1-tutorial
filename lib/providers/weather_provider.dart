import 'package:flutter_bloc_library_v1_tutorial/data/model/weather.dart';
import 'package:flutter_bloc_library_v1_tutorial/providers/weather_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_provider.g.dart';

@riverpod
class AsyncWeather extends _$AsyncWeather {
  @override
  FutureOr<Weather?> build() async {
    return null;
  }

  Future<void> getWeather(String cityName) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final weather =
          await ref.watch(weatherRepositoryProvider).fetchWeather(cityName);
      return weather;
    });
  }

  Future<void> getDetailedWeather(String cityName) async {
    state = AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final weather = await ref
          .watch(weatherRepositoryProvider)
          .fetchDetailedWeather(cityName);

      return weather;
    });
  }
}
