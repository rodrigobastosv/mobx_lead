// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieStore on MovieStoreBase, Store {
  final _$termoAtom = Atom(name: 'MovieStoreBase.termo');

  @override
  String get termo {
    _$termoAtom.reportRead();
    return super.termo;
  }

  @override
  set termo(String value) {
    _$termoAtom.reportWrite(value, super.termo, () {
      super.termo = value;
    });
  }

  final _$isLoadingAtom = Atom(name: 'MovieStoreBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$isEmptySearchAtom = Atom(name: 'MovieStoreBase.isEmptySearch');

  @override
  bool get isEmptySearch {
    _$isEmptySearchAtom.reportRead();
    return super.isEmptySearch;
  }

  @override
  set isEmptySearch(bool value) {
    _$isEmptySearchAtom.reportWrite(value, super.isEmptySearch, () {
      super.isEmptySearch = value;
    });
  }

  final _$moviesAtom = Atom(name: 'MovieStoreBase.movies');

  @override
  ObservableList<MovieSearch> get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(ObservableList<MovieSearch> value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  final _$movieResultAtom = Atom(name: 'MovieStoreBase.movieResult');

  @override
  MovieResult get movieResult {
    _$movieResultAtom.reportRead();
    return super.movieResult;
  }

  @override
  set movieResult(MovieResult value) {
    _$movieResultAtom.reportWrite(value, super.movieResult, () {
      super.movieResult = value;
    });
  }

  final _$getMoviesByTermAsyncAction =
      AsyncAction('MovieStoreBase.getMoviesByTerm');

  @override
  Future<dynamic> getMoviesByTerm() {
    return _$getMoviesByTermAsyncAction.run(() => super.getMoviesByTerm());
  }

  final _$getMoviesByIdAsyncAction =
      AsyncAction('MovieStoreBase.getMoviesById');

  @override
  Future<void> getMoviesById(String movieId) {
    return _$getMoviesByIdAsyncAction.run(() => super.getMoviesById(movieId));
  }

  final _$MovieStoreBaseActionController =
      ActionController(name: 'MovieStoreBase');

  @override
  void setTermo(String t) {
    final _$actionInfo = _$MovieStoreBaseActionController.startAction(
        name: 'MovieStoreBase.setTermo');
    try {
      return super.setTermo(t);
    } finally {
      _$MovieStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
termo: ${termo},
isLoading: ${isLoading},
isEmptySearch: ${isEmptySearch},
movies: ${movies},
movieResult: ${movieResult}
    ''';
  }
}
