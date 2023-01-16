// ignore_for_file: avoid_print

import 'package:app/Services/api.dart';
import 'package:dio/dio.dart';

getCurrentWeather(String? local) async {
  final client = Dio(
    BaseOptions(baseUrl: Api.base),
  );
  final response = await client
      .get('current.json?key=0b7f509ff46c4700961134501231401&q=$local');
  print(response.data);
}

getFutureWeather() async {
  final client = Dio(
    BaseOptions(baseUrl: 'http://api.weatherapi.com/v1/'),
  );
  final response = await client
      .get('current.json?key=0b7f509ff46c4700961134501231401&q=Sao Luis');
  print(response.data);
}
