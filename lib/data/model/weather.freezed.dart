// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Weather {
  String get cityName => throw _privateConstructorUsedError;
  double get temperatureCelsius => throw _privateConstructorUsedError;
  double? get temperatureFahrenheit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {String cityName,
      double temperatureCelsius,
      double? temperatureFahrenheit});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? temperatureCelsius = null,
    Object? temperatureFahrenheit = freezed,
  }) {
    return _then(_value.copyWith(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      temperatureCelsius: null == temperatureCelsius
          ? _value.temperatureCelsius
          : temperatureCelsius // ignore: cast_nullable_to_non_nullable
              as double,
      temperatureFahrenheit: freezed == temperatureFahrenheit
          ? _value.temperatureFahrenheit
          : temperatureFahrenheit // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cityName,
      double temperatureCelsius,
      double? temperatureFahrenheit});
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$_Weather>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? temperatureCelsius = null,
    Object? temperatureFahrenheit = freezed,
  }) {
    return _then(_$_Weather(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      temperatureCelsius: null == temperatureCelsius
          ? _value.temperatureCelsius
          : temperatureCelsius // ignore: cast_nullable_to_non_nullable
              as double,
      temperatureFahrenheit: freezed == temperatureFahrenheit
          ? _value.temperatureFahrenheit
          : temperatureFahrenheit // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Weather implements _Weather {
  const _$_Weather(
      {required this.cityName,
      required this.temperatureCelsius,
      this.temperatureFahrenheit});

  @override
  final String cityName;
  @override
  final double temperatureCelsius;
  @override
  final double? temperatureFahrenheit;

  @override
  String toString() {
    return 'Weather(cityName: $cityName, temperatureCelsius: $temperatureCelsius, temperatureFahrenheit: $temperatureFahrenheit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.temperatureCelsius, temperatureCelsius) ||
                other.temperatureCelsius == temperatureCelsius) &&
            (identical(other.temperatureFahrenheit, temperatureFahrenheit) ||
                other.temperatureFahrenheit == temperatureFahrenheit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cityName, temperatureCelsius, temperatureFahrenheit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required final String cityName,
      required final double temperatureCelsius,
      final double? temperatureFahrenheit}) = _$_Weather;

  @override
  String get cityName;
  @override
  double get temperatureCelsius;
  @override
  double? get temperatureFahrenheit;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}
