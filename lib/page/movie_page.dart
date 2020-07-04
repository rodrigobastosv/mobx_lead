import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/mobx/theme_store.dart';
import 'package:statemanagement/model/movie_result.dart';

class MoviePage extends StatelessWidget {
  MoviePage({this.movie});

  final MovieResult movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Provider.of<ThemeStore>(context, listen: false)
                  .setColor(Colors.green);
            },
            icon: Icon(Icons.color_lens),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: movie.imdbID,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    movie.poster,
                  ),
                  radius: 100,
                ),
              ),
              InfoValue(
                info: 'Ano',
                value: movie.year,
              ),
              InfoValue(
                info: 'Tipo',
                value: movie.type,
              ),
              InfoValue(
                info: 'Genêro',
                value: movie.genre,
              ),
              InfoValue(
                info: 'Diretor',
                value: movie.director,
              ),
              InfoValue(
                info: 'Atores',
                value: movie.actors,
              ),
              InfoValue(
                info: 'Premiações',
                value: movie.awards,
              ),
              InfoValue(
                info: 'Premiações',
                value: movie.genre,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoValue extends StatelessWidget {
  InfoValue({this.info, this.value});

  final String info;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$info: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
