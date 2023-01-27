import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required String cityName,
    required double temperatureCelsius,
    double? temperatureFahrenheit,
  }) = _Weather;
}
