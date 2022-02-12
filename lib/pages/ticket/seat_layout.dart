part of 'ticket_sale_page.dart';

class SeatLayoutWidget extends StatelessWidget {
  final List<List<SeatModel>> seatData;
  const SeatLayoutWidget({Key? key, required this.seatData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ...seatData
              .map((seats) => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: seats
                        .map((seat) => SeatWidget(
                              seat: seat,
                            ))
                        .toList(),
                  ))
              .toList(),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircleAvatar(
                    radius: 4.8,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    width: 6.0,
                  ),
                  Text(
                    'Free',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircleAvatar(
                    radius: 4.8,
                    backgroundColor: Colors.white38,
                  ),
                  SizedBox(
                    width: 6.0,
                  ),
                  Text(
                    'Reserved',
                    style: TextStyle(color: Colors.white54),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircleAvatar(
                    radius: 4.8,
                    backgroundColor: primarColor,
                  ),
                  SizedBox(
                    width: 6.0,
                  ),
                  Text(
                    'Selected',
                    style: TextStyle(color: Colors.white70),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class SeatWidget extends StatelessWidget {
  final SeatModel seat;
  const SeatWidget({Key? key, required this.seat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28.0,
      height: 26.0,
      margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      decoration: BoxDecoration(
          color: seat.isFree ? Colors.white : Colors.white30,
          borderRadius: BorderRadius.circular(8.0)),
      child: InkWell(
        onTap: seat.isFree ? () {} : null,
        child: CustomPaint(
          painter: SeatPainter(),
        ),
      ),
    );
  }
}

class SeatPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.6;

    final path = Path();

    path.moveTo(0.0, size.height * 0.2);
    path.lineTo(size.width * 0.2, size.height * 0.25);
    path.lineTo(size.width * 0.2, size.height * 0.7);
    path.lineTo(size.width * 0.1, size.height);
    path.lineTo(size.width * 0.2, size.height * 0.7);
    path.lineTo(size.width * 0.8, size.height * 0.7);
    path.lineTo(size.width * 0.95, size.height);
    path.lineTo(size.width * 0.8, size.height * 0.7);
    path.lineTo(size.width * 0.8, size.height * 0.25);
    path.lineTo(size.width, size.height * 0.2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
