part of './home_page.dart';

class TrailerListWidget extends StatelessWidget {
  final Size size;
  const TrailerListWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.3,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Trailers',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.24,
            child: ListView.separated(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(
                width: 14.0,
              ),
              itemBuilder: (context, index) {
                return _TrailerItemWidget(
                  index: index,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class _TrailerItemWidget extends StatelessWidget {
  final int index;

  const _TrailerItemWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.58,
      child: DecoratedBox(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'images/trailer_poster.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Center(
              child: PlayButton(buttonSize: 42),
            )
          ],
        ),
      ),
    );
  }
}
