part of 'ticket_sale_page.dart';

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.08,
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
          child: CustomPaint(
            painter: ScreenPainter(),
          ),
        ),
        const Positioned.fill(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            'Screen',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ))
      ],
    );
  }
}

class ScreenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.88)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.8;

    final path = Path();

    path.moveTo(0.0, size.height);
    path.quadraticBezierTo(size.width * 0.5, 0.0, size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
