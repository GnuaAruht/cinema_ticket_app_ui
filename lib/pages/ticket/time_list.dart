part of 'ticket_sale_page.dart';

class TimeListWidget extends StatefulWidget {
  const TimeListWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TimeListWidget> createState() => _TimeListWidgetState();
}

class _TimeListWidgetState extends State<TimeListWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 8.0,
        );
      },
      itemBuilder: (context, index) {
        return ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: index == _selectedIndex ? primarColor : Colors.white30,
                onPrimary:
                    index == _selectedIndex ? Colors.black : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                padding: const EdgeInsets.symmetric(horizontal: 20.0)),
            onPressed: () {
              setState(() {
                if (_selectedIndex != index) {
                  _selectedIndex = index;
                }
              });
            },
            child: const Text(
              '11:30 AM',
              style: TextStyle(fontWeight: FontWeight.w600),
            ));
      },
    );
  }
}
