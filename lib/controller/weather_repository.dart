// ignore_for_file: avoid_print

import 'package:app/controller/api.dart';
import 'package:app/model/weather_dto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiServiceProvider =
    Provider<WeatherRepository>((ref) => WeatherRepository());

class WeatherRepository {
  Future<WeatherDTO> getCurrentWeather(String? local) async {
    try {
      final client = Dio(
        BaseOptions(baseUrl: Api.base),
      );
      final response =
          await client.get(Api.getClimaAtual, queryParameters: {'q': local});

      final resp = response.data;
      print('aaaaaaaaaaaaaaaaaaaaaaa');
      print(resp);
      return WeatherDTO.fromMap(resp);
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