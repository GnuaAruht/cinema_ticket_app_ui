part of './home_page.dart';

class MovieListWidget extends StatelessWidget {
  final String title;
  final VoidCallback onViewAll;
  final Size size;
  final List<MovieModel> movies;
  const MovieListWidget(
      {Key? key,
      required this.size,
      required this.title,
      required this.onViewAll,
      required this.movies})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.42,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: onViewAll,
                  child: const Text(
                    'View all',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.36,
            child: ListView.separated(
              itemCount: movies.length,
              scrollDirection: Axis.horizontal,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(
                width: 12.0,
              ),
              itemBuilder: (context, index) {
                return MovieItemWidget(movie: movies[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}

class MovieItemWidget extends StatelessWidget {
  final MovieModel movie;
  const MovieItemWidget({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(MovieDetailPage.routeName, arguments: movie);
      },
      child: AspectRatio(
          aspectRatio: 0.44,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  movie.posterUrl,
                  height: 200,
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                movie.title,
                maxLines: 2,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.white, overflow: TextOverflow.ellipsis),
              ),
              const SizedBox(
                height: 6.0,
              ),
              RatingBar.builder(
                  itemCount: 5,
                  initialRating: 4.5,
                  itemSize: 18.0,
                  itemBuilder: (context, index) => const Icon(
                        Icons.star_rate_rounded,
                        color: primarColor,
                      ),
                  onRatingUpdate: (_) {}),
            ],
          )),
    );
  }
}
