part of 'widgets.dart';

class CardTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultMargin),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(width: 0.3, color: greyColor))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width:
                MediaQuery.of(context).size.width - (defaultMargin * 2) - 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'lapangan serbaguna inhofftank',
                  style: textStyle.copyWith(fontSize: 18),
                ),
                Text(
                  '21 Feb 2021',
                  style: textStyle.copyWith(color: greyColor),
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
          SizedBox(
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Rp75.000',
                  style: textStyle.copyWith(fontSize: 16),
                ),
                Text(
                  'Menunggu pembayaran',
                  style: textStyle.copyWith(color: greyColor),
                  textAlign: TextAlign.right,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
