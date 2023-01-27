import 'package:flutter/material.dart';
import 'package:flutter_bloc_library_v1_tutorial/providers/weather_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/model/weather.dart';

class WeatherDetailPage extends ConsumerStatefulWidget {
  final Weather masterWeather;

  const WeatherDetailPage({
    Key? key,
    required this.masterWeather,
  }) : super(key: key);

  @override
  _WeatherDetailPageState createState() => _WeatherDetailPageState();
}

class _WeatherDetailPageState extends ConsumerState<WeatherDetailPage> {
  @override
  void initState() {
    Future.delayed(
        Duration.zero,
        () => ref
            .read(asyncWeatherProvider.notifier)
            .getDetailedWeather(widget.masterWeather.cityName));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Detail"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        child: Consumer(
          builder: (_, watch, child) {
            final state = ref.watch(asyncWeatherProvider);

            return state.maybeWhen(
              data: (Weather? weather) {
                if (weather == null) {
                  return SizedBox.shrink();
                }

                return buildColumnWithData(context, weather);
              },
              loading: () => buildLoading(),
              orElse: () => SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Column buildColumnWithData(BuildContext context, Weather weather) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          weather.cityName,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          // Display the Celsius temperature with 1 decimal place
          "${weather.temperatureCelsius.toStringAsFixed(1)} °C",
          style: TextStyle(fontSize: 80),
        ),
        Text(
          // Display the Fahrenheit temperature with 1 decimal place
          "${weather.temperatureFahrenheit?.toStringAsFixed(1)} °F",
          style: TextStyle(fontSize: 80),
        ),
      ],
    );
  }
}
