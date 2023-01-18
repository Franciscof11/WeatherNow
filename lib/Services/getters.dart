// ignore_for_file: avoid_print, unused_local_variable

import 'package:app/Services/api.dart';
import 'package:dio/dio.dart';

getCurrentWeather(String? local) async {
  final client = Dio(
    BaseOptions(baseUrl: Api.base),
  );
  final response =
      await client.get(Api.getClimaAtual, queryParameters: {'q': local});
  Map<String, dynamic> posts;
  posts = response.data;
  print(posts);
  print(posts['current']['temp_c']);
  print(posts['current']['feelslike_c']);
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