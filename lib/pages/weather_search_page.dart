import 'package:flutter/material.dart';
import 'package:flutter_bloc_library_v1_tutorial/providers/weather_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/model/weather.dart';
import 'weather_detail_page.dart';

class WeatherSearchPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<Weather?>>(asyncWeatherProvider, (_, state) {
      state.maybeMap(
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Couldn't fetch weather. Is the device online?"),
              ),
            );
          },
          orElse: () => {});
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Search"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        child: Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(asyncWeatherProvider);

            return state.maybeWhen(
              data: (Weather? weather) {
                if (weather == null) {
                  return buildInitialInput();
                }

                return buildColumnWithData(context, weather);
              },
              error: (error, _) {
                return buildInitialInput();
              },
              loading: () => buildLoading(),
              orElse: () => SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  Widget buildInitialInput() {
    return Center(
      child: CityInputField(),
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
          // Display the temperature with 1 decimal place
          "${weather.temperatureCelsius.toStringAsFixed(1)} °C",
          style: TextStyle(fontSize: 80),
        ),
        ElevatedButton(
          child: Text('See Details'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.lightBlue[100]),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => WeatherDetailPage(masterWeather: weather),
              ),
            );
          },
        ),
        CityInputField(),
      ],
    );
  }
}

class CityInputField extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        onSubmitted: (value) => submitCityName(ref, value),
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: "Enter a city",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  void submitCityName(WidgetRef ref, String cityName) {
    ref.read(asyncWeatherProvider.notifier).getWeather(cityName);
  }
}
