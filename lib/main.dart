import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/mobx/theme_store.dart';

import 'page/movie_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final themeStore = ThemeStore();

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: themeStore,
      child: Observer(
        builder: (_) => MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: themeStore.mainColor,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: MovieListPage(),
        ),
      ),
    );
  }
}
