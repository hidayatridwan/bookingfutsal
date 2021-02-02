part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(defaultMargin),
        children: [
          TextField(
            decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
                hintText: 'Cari lapangan futsal terdekat',
                hintStyle: textStyle,
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: greyColor,
                )),
          ),
          SizedBox(
            height: 8,
          ),
          Column(
            children: [
              CardVenue(
                name: 'KICK OFF FUTSAL INHOFTANK',
                distance: '8.5KM',
                address: 'Jl. cihanjuang no 34',
                picPath: 'assets/slide1.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VenuePage()),
                  );
                },
              ),
              CardVenue(
                name: 'Cosmo Futsal',
                distance: '8.5KM',
                address: 'Jl. cihanjuang no 34',
                picPath: 'assets/slide2.jpg',
              ),
              CardVenue(
                name: 'Green Futsal',
                distance: '8.5KM',
                address: 'Jl. cihanjuang no 34',
                picPath: 'assets/slide3.jpg',
              ),
              CardVenue(
                name: 'Lapangan Futsal Bedeng Astanaanyar',
                distance: '8.5KM',
                address: 'Jl. cihanjuang no 34',
                picPath: 'assets/slide1.jpg',
              ),
              CardVenue(
                name: 'Sokker Blast',
                distance: '8.5KM',
                address: 'Jl. cihanjuang no 34',
                picPath: 'assets/slide2.jpg',
              ),
              CardVenue(
                name: 'Lapangan futsal serbaguna',
                distance: '8.5KM',
                address: 'Jl. cihanjuang no 34',
                picPath: 'assets/slide3.jpg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
