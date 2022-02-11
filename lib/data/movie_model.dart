class MovieModel {
  final String id;
  final String title;
  final String posterUrl;
  final String overview;
  final int rating;
  final String year;
  final String duration;

  MovieModel(
      {required this.id,
      required this.title,
      required this.posterUrl,
      required this.overview,
      required this.year,
      required this.rating,
      required this.duration});

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'] as String,
      title: json['title'] as String,
      posterUrl: json['posterUrl'] as String,
      overview: json['overview'],
      year: json['year'] as String,
      rating: json['rating'] as int,
      duration: json['duration'] as String);
}
