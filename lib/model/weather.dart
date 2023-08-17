import 'package:app/model/current_weather.dart';
import 'package:app/model/location.dart';

class Weather {
  final Location? location;
  final Current? current;

  Weather({
    required this.location,
    required this.current,
  });

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      location: Location.fromMap(map['location'] ?? <String, dynamic>{}),
      current: Current.fromMap(map['current'] ?? <String, dynamic>{}),
    );
  }
}
