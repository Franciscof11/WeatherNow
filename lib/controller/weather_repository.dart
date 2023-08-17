// ignore_for_file: avoid_print

import 'package:app/controller/api.dart';
import 'package:app/model/weather.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiServiceProvider =
    Provider<WeatherRepository>((ref) => WeatherRepository());

class WeatherRepository {
  Future<Weather> getCurrentWeather(String? local) async {
    try {
      final response =
          await Dio().get(Api.getClimaAtual, queryParameters: {'q': local});
      print(response.data);
      return Weather.fromMap(response.data);
    } catch (e) {
      throw Exception('Erro: $e');
    }
  }
}

/* getFutureWeather() async {
  final client = Dio(
    BaseOptions(baseUrl: 'http://api.weatherapi.com/v1/'),
  );
  final response = await client
      .get('current.json?key=0b7f509ff46c4700961134501231401&q=Sao Luis');
  print(response.data);
}
 */