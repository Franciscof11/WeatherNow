// ignore_for_file: avoid_print

class Api {
  static const cidade = 'Sao Luis';
  static const key = '0b7f509ff46c4700961134501231401';
  static const base = 'http://api.weatherapi.com/v1/';
  static const getClimaAtual = '${base}current.json?key=$key&q=$cidade';
}
