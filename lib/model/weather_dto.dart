// ignore_for_file: non_constant_identifier_names

import 'package:app/model/current_weather.dart';
import 'package:app/model/location_dto.dart';

class WeatherDTO {
  final LocationDTO location;
  final CurrentDTO current;
  final num wind_mph;
  final num wind_kph;
  final num wind_degree;
  final num wind_dir;
  final num pressure_mb;
  final num pressure_in;
  final num precip_mm;
  final num precip_in;
  final num humidity;
  final num cloud;
  final num feelslike_f;
  final num vis_km;
  final num vis_miles;
  final num uv;
  final num gust_mph;
  final num gust_kph;
  final num sensaTermica; //feelslike_c

  WeatherDTO({
    required this.location,
    required this.current,
    required this.sensaTermica,
    required this.wind_mph,
    required this.wind_kph,
    required this.wind_degree,
    required this.wind_dir,
    required this.pressure_mb,
    required this.pressure_in,
    required this.precip_mm,
    required this.precip_in,
    required this.humidity,
    required this.cloud,
    required this.feelslike_f,
    required this.vis_km,
    required this.vis_miles,
    required this.uv,
    required this.gust_mph,
    required this.gust_kph,
  });

  factory WeatherDTO.fromMap(Map<String, dynamic> map) {
    return WeatherDTO(
      location: LocationDTO.fromMap(map['location'] ?? <String, dynamic>{}),
      current: CurrentDTO.fromMap(map['location'] ?? <String, dynamic>{}),
      sensaTermica: map['feelslike_c'] ?? 0,
      cloud: map['cloud'] ?? 0,
      feelslike_f: map['feelslike_f'] ?? 0,
      gust_kph: map['gust_kph'] ?? 0,
      humidity: map['humidity'] ?? 0,
      gust_mph: map['gust_mph'] ?? 0,
      precip_in: map['precip_in'] ?? 0,
      precip_mm: map['precip_mm'] ?? 0,
      vis_miles: map['vis_miles'] ?? 0,
      wind_degree: map['wind_degree'] ?? 0,
      wind_dir: map['wind_dir'] ?? 0,
      pressure_in: map['pressure_in'] ?? 0,
      pressure_mb: map['pressure_mb'] ?? 0,
      uv: map['uv'] ?? 0,
      vis_km: map['vis_km'] ?? 0,
      wind_kph: map['wind_kph'] ?? 0,
      wind_mph: map['wind_mph'] ?? 0,
    );
  }
}
