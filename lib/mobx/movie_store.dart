import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
import 'package:statemanagement/model/movie_result.dart';
import 'package:statemanagement/model/movie_search.dart';
import 'package:statemanagement/model/movie_search_result.dart';

part 'movie_store.g.dart';

class MovieStore = MovieStoreBase with _$MovieStore;

abstract class MovieStoreBase with Store {
  @observable
  String termo;

  @observable
  bool isLoading = false;

  @observable
  bool isEmptySearch;

  @observable
  ObservableList<MovieSearch> movies = ObservableList.of([]);

  @observable
  MovieResult movieResult;

  @action
  void setTermo(String t) {
    termo = t;
  }

  @action
  Future getMoviesByTerm() async {
    if (termo != null && termo.isNotEmpty) {
      isEmptySearch = false;
      isLoading = true;
      final response =
          await http.get('http://www.omdbapi.com/?s=$termo&apikey=98c5f6f6');
      isLoading = false;
      final decodedResponse = jsonDecode(response.body);
      final movieSearchResult = MovieSearchResult.fromJson(decodedResponse);
      movies = ObservableList.of(movieSearchResult.movies);
    } else {
      isEmptySearch = true;
    }
  }

  @action
  Future<void> getMoviesById(String movieId) async {
    isLoading = true;
    final response =
        await http.get('http://www.omdbapi.com/?i=$movieId&apikey=98c5f6f6');
    isLoading = false;
    final decodedResponse = jsonDecode(response.body);
    movieResult = MovieResult.fromJson(decodedResponse);
  }
}
