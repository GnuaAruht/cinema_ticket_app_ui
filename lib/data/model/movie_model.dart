class MovieModel {
  final String id;
  final String title;
  final String posterUrl;
  final String overview;
  final int rating;
  final String year;
  final String duration;
  final String genres;

  MovieModel(
      {required this.id,
      required this.title,
      required this.posterUrl,
      required this.overview,
      required this.year,
      required this.rating,
      required this.duration,
      required this.genres});
}
