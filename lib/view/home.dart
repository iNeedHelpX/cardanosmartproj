import 'package:cardanosmartproj/model/colors.dart';
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
  double screenw, screenh;

  final Duration duration = Duration(milliseconds: 300);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenh = size.height;
    screenw = size.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
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

  Widget dashboard(context) {
    return AnimatedPositioned(
      top: 0.2 * screenh,
      bottom: 0.2 * screenw,
      left: 0.7 * screenw,
      right: -0.5 * screenw,
      duration: duration,
      child: Material(
        elevation: 8,
        color: backdropper1,
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
              )
            ],
          ),
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
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: qrcanada(),
      ),
      child: PrettyQr(
          image: AssetImage('assets/flags.png'),
          typeNumber: 9,
          size: 300.0,
          data:
              "https://mail.google.com/mail/u/1/#inbox/FMfcgzGkZstpSDXTFxLwVTDQhNVVTdvX?projector=1&messagePartId=0.1",
          errorCorrectLevel: QrErrorCorrectLevel.M,
          roundEdges: true),
    );
  }
}
