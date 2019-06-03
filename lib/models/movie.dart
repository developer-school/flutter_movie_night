class Movie {
  final int id;
  final String name;
  final String genre;
  final String image;
  final String releaseYear;

  Movie({this.id, this.name, this.genre, this.image, this.releaseYear});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        id: json['id'],
        name: json['name'],
        genre: json['genre'],
        image: json['image'],
        releaseYear: json['releaseYear']);
  }
}
