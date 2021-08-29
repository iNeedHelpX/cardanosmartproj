import 'package:cardanosmartproj/model/qrbackcanada.dart';
import 'package:cardanosmartproj/view/title.dart';
import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            CovidTitle(),
            SizedBox(height: 50),
            QrCode()
          ],
        ),
      ),
    );
  }
}

class QrCode extends StatelessWidget {
  const QrCode({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: qrcanada(),
      ),
      child: PrettyQr(
          image: AssetImage('assets/flags.png'),
          typeNumber: 9,
          size: 350.0,
          data:
              'https://docs.google.com/document/d/1prXywSoCb0bGgr7cLIaAiuXKu4n2mKm5Q1rdV9Piurc/edit?usp=sharing',
          errorCorrectLevel: QrErrorCorrectLevel.M,
          roundEdges: true),
    );
  }
}
