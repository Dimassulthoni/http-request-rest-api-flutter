import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:http_request_rest_api_flutter/pages/movie_list.dart';

class HttpService {
  final String apiKey = 'd0b71021dec314f93327ca23a71d1196';
  final String baseUrl =
      'https://api.themoviedb.org/3/movie/popular?api_key=d0b71021dec314f93327ca23a71d1196&language=en-US&page=1';
  Future<String> getPopularMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("sukses");
      String response = result.body;
      return response;
    } else {
      print("fail");
      String response = result.body;
      return response;
    }
  }
}
