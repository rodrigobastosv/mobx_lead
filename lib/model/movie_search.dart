class MovieSearch {
  String title;
  String year;
  String imdbID;
  String type;
  String poster;

  MovieSearch({this.title, this.year, this.imdbID, this.type, this.poster});

  MovieSearch.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    year = json['Year'];
    imdbID = json['imdbID'];
    type = json['Type'];
    poster = json['Poster'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = this.title;
    data['Year'] = this.year;
    data['imdbID'] = this.imdbID;
    data['Type'] = this.type;
    data['Poster'] = this.poster;
    return data;
  }

  @override
  String toString() {
    return 'MovieSearch{title: $title}';
  }
}
