import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  static const String _apiKey = '895284fb2d2c50a520ea537456963d9c'; // Free demo key
  static const String _baseUrl = 'https://api.openweathermap.org/data/2.5';

  // Get weather by coordinates
  Future<Map<String, dynamic>> getWeatherByCoordinates(
      double latitude, double longitude) async {
    final url = Uri.parse(
        '$_baseUrl/weather?lat=$latitude&lon=$longitude&appid=$_apiKey&units=metric');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  // Get weather by city name
  Future<Map<String, dynamic>> getWeatherByCity(String cityName) async {
    final url = Uri.parse(
        '$_baseUrl/weather?q=$cityName&appid=$_apiKey&units=metric');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('City not found');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  // Get 5-day forecast
  Future<Map<String, dynamic>> getForecast(String cityName) async {
    final url = Uri.parse(
        '$_baseUrl/forecast?q=$cityName&appid=$_apiKey&units=metric');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load forecast data');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  // Get forecast by coordinates
  Future<Map<String, dynamic>> getForecastByCoordinates(
      double latitude, double longitude) async {
    final url = Uri.parse(
        '$_baseUrl/forecast?lat=$latitude&lon=$longitude&appid=$_apiKey&units=metric');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load forecast data');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
}
