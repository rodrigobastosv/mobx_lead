import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:statemanagement/mobx/movie_store.dart';

import 'movie_page.dart';

class MovieListPage extends StatefulWidget {
  @override
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  final movieStore = MovieStore();

  ReactionDisposer whenReaction;

  @override
  void initState() {
    whenReaction = when((_) => movieStore.isEmptySearch, () {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          content: Text('Digite algo no campo de pesquisa!'),
        ),
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    whenReaction.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => movieStore.isLoading
          ? Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : FloatingSearchBar.builder(
              padding: EdgeInsets.only(top: 12),
              itemCount: movieStore.movies.toList().length,
              itemBuilder: (_, i) {
                final movie = movieStore.movies.toList()[i];
                return ListTile(
                  onTap: () async {
                    await movieStore.getMoviesById(movie.imdbID);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => MoviePage(
                          movie: movieStore.movieResult,
                        ),
                      ),
                    );
                  },
                  leading: Hero(
                    tag: movie.imdbID,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        movie.poster,
                      ),
                    ),
                  ),
                  title: Text(movie.title),
                );
              },
              trailing: GestureDetector(
                onTap: () async => movieStore.getMoviesByTerm(),
                child: Icon(Icons.search),
              ),
              onChanged: (value) {
                movieStore.setTermo(value);
              },
              decoration: InputDecoration.collapsed(
                hintText: "Search...",
              ),
            ),
    );
  }
}
