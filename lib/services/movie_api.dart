import 'dart:convert' as convert;
import 'package:http/http.dart';
import 'package:movie_night/models/movie.dart';

class MovieApi {
  final String baseURL = "http://localhost:3000/movies";
  Client client = new Client();
  List<Movie> allMovies;

  getMovies() async {
    final Response res = await client.get(baseURL);

    if (res.statusCode == 200) {
      List<dynamic> data = convert.jsonDecode(res.body);
      List<Movie> movies = data.map((movie) => Movie.fromJson(movie)).toList();

      return movies;
    }
  }
}
