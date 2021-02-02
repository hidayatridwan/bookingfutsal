part of 'pages.dart';

class TransactionPage extends StatefulWidget {
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(defaultMargin),
              color: Colors.white,
              child: Text('Transaksi anda',
                  style: textStyle.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ))),
          SizedBox(
            height: 8,
          ),
          Column(children: [
            CardTransaction(),
            CardTransaction(),
            CardTransaction()
          ]),
        ],
      ),
    );
  }
}
