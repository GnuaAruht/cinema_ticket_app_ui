part of 'ticket_sale_page.dart';

final dateModelList = [
  DateModel(8, 'Thu'),
  DateModel(9, 'Fri'),
  DateModel(10, 'Sat'),
  DateModel(11, 'Sun'),
  DateModel(12, 'Mon')
];

class DateList extends StatefulWidget {
  const DateList({
    Key? key,
  }) : super(key: key);

  @override
  State<DateList> createState() => _DateListState();
}

class _DateListState extends State<DateList> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: dateModelList.length,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 8.0,
        );
      },
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (_selectedIndex == index) return;
            setState(() {
              _selectedIndex = index;
            });
          },
          child: index == _selectedIndex
              ? _SelectedDateItemWidget(
                  dateModel: dateModelList[index],
                )
              : _DateItemWidget(dateModel: dateModelList[index]),
        );
      },
    );
  }
}

class _DateItemWidget extends StatelessWidget {
  final DateModel dateModel;
  const _DateItemWidget({Key? key, required this.dateModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14.0),
      child: Stack(
        children: [
          ColorFiltered(
              colorFilter:
                  const ColorFilter.mode(Colors.white30, BlendMode.srcOut),
              child: Container(
                color: Colors.transparent,
                width: 72.0,
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.topCenter,
                  child:
                      CircleAvatar(radius: 5.4, backgroundColor: Colors.black),
                ),
              )),
          Positioned.fill(
              child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(
                  flex: 2,
                ),
                Text(
                  dateModel.weekDay,
                  style: const TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  '${dateModel.day}',
                  style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Spacer(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class _SelectedDateItemWidget extends StatelessWidget {
  final DateModel dateModel;
  const _SelectedDateItemWidget({Key? key, required this.dateModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14.0),
      child: ColorFiltered(
          colorFilter: const ColorFilter.mode(primarColor, BlendMode.srcOut),
          child: Container(
            color: Colors.transparent,
            width: 72.0,
            child: Stack(
              children: [
                const Positioned(
                  top: 8.0,
                  left: 0.0,
                  right: 0.0,
                  child: CircleAvatar(
                    radius: 5.4,
                    backgroundColor: Colors.black,
                  ),
                ),
                Positioned(
                    bottom: 20.0,
                    left: 0.0,
                    right: 0.0,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 6.0,
                          height: 10.0,
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8.0),
                                  bottomRight: Radius.circular(8.0))),
                        ),
                        Container(
                          width: 6.0,
                          height: 10.0,
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  bottomLeft: Radius.circular(8.0))),
                        )
                      ],
                    )),
                Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    Text(
                      dateModel.weekDay,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      '${dateModel.day}',
                      style: const TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
