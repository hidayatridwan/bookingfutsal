part of 'pages.dart';

class VenuePage extends StatefulWidget {
  @override
  _VenuePageState createState() => _VenuePageState();
}

class _VenuePageState extends State<VenuePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  TabController tabController;
  int totalHours = 1;
  String field = 'Lapang 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageSlider(
            width: double.infinity,
            height: 220,
            tabController: tabController,
            autoSlide: true,
            duration: Duration(seconds: 6),
            curve: Curves.bounceIn,
            children: [
              'assets/slide1.jpg',
              'assets/slide2.jpg',
              'assets/slide3.jpg'
            ].map((e) {
              return ClipRRect(
                child: Image.asset(
                  e,
                  fit: BoxFit.cover,
                ),
              );
            }).toList(),
          ),
          ListView(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 8, left: 8),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 130),
                    padding: EdgeInsets.all(defaultMargin),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lapangan futsal serbaguna',
                              style: textStyle.copyWith(
                                  fontWeight: FontWeight.w500, fontSize: 22),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '75K/Jam',
                                  style: textStyle.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: greyColor),
                                ),
                                RatingStars(3.4)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Lokasi Map',
                              style: textStyle.copyWith(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MapPage()),
                                  );
                                },
                                child: Text(
                                  'Jl. Inhofftank no 43',
                                  style: textStyle.copyWith(
                                      fontSize: 18, color: blueColor),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Lama main',
                              style: textStyle.copyWith(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            DropdownButton(
                              items: [1, 2, 3, 4, 5].map((e) {
                                return DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e.toString() + ' Jam',
                                      style: textStyle.copyWith(
                                          color: blueColor, fontSize: 18),
                                    ));
                              }).toList(),
                              onChanged: (item) {
                                setState(() {
                                  totalHours = item;
                                });
                              },
                              value: totalHours,
                              underline: SizedBox(),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tanggal',
                              style: textStyle.copyWith(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            GestureDetector(
                              onTap: () {
                                DatePicker.showDatePicker(context,
                                    showTitleActions: true,
                                    minTime: DateTime.now(), onChanged: (date) {
                                  print(date);
                                }, onConfirm: (date) {
                                  print(date);
                                });
                              },
                              child: Text(
                                '21 Februari 2021',
                                style: textStyle.copyWith(
                                    color: blueColor, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jam',
                              style: textStyle.copyWith(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            GestureDetector(
                              onTap: () {
                                DatePicker.showTimePicker(
                                  context,
                                  showTitleActions: true,
                                  showSecondsColumn: false,
                                );
                              },
                              child: Text(
                                '20:00',
                                style: textStyle.copyWith(
                                    color: blueColor, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Lapangan',
                              style: textStyle.copyWith(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            DropdownButton(
                              items:
                                  ['Lapang 1', 'Lapang 2', 'Lapang 3'].map((e) {
                                return DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                      style: textStyle.copyWith(
                                          color: blueColor, fontSize: 18),
                                    ));
                              }).toList(),
                              onChanged: (item) {
                                setState(() {
                                  field = item;
                                });
                              },
                              value: field,
                              underline: SizedBox(),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(defaultMargin),
              child: RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Booking (75K)',
                    style: textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                  color: blueColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(defaultMargin))),
            ),
          )
        ],
      ),
    );
  }
}
