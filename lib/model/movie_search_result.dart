import 'package:statemanagement/model/movie_search.dart';

class MovieSearchResult {
  List<MovieSearch> movies;
  String totalResults;
  String response;

  MovieSearchResult({this.movies, this.totalResults, this.response});

  MovieSearchResult.fromJson(Map<String, dynamic> json) {
    if (json['Search'] != null) {
      movies = new List<MovieSearch>();
      json['Search'].forEach((v) {
        movies.add(new MovieSearch.fromJson(v));
      });
    }
    totalResults = json['totalResults'];
    response = json['Response'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.movies != null) {
      data['Search'] = this.movies.map((v) => v.toJson()).toList();
    }
    data['totalResults'] = this.totalResults;
    data['Response'] = this.response;
    return data;
  }
}
