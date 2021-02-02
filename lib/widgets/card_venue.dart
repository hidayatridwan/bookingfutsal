part of 'widgets.dart';

class CardVenue extends StatelessWidget {
  final String name;
  final String distance;
  final String address;
  final String picPath;
  final Function onTap;

  CardVenue({this.name, this.distance, this.address, this.picPath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
                child: Image(
                  image: AssetImage(picPath),
                  width: 150,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width -
                        150 -
                        8 -
                        (defaultMargin * 2),
                    child: Text(
                      name,
                      style: textStyle.copyWith(fontSize: 18),
                    ),
                  ),
                  RatingStars(3.4),
                  Text(
                    distance,
                    style: textStyle.copyWith(color: greyColor),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width -
                        150 -
                        8 -
                        (defaultMargin * 2),
                    child: Text(
                      address,
                      style: textStyle.copyWith(color: greyColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
