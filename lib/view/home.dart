import 'package:cardanosmartproj/model/colors.dart';
import 'package:cardanosmartproj/model/grad2.dart';
import 'package:cardanosmartproj/model/qrgrad.dart';
import 'package:cardanosmartproj/model/qrgrad2.dart';
import 'package:cardanosmartproj/view/title.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        gradient: qrgrad2(),
      ),
      child: QrImage(
        data: "ethereum smart",
        version: QrVersions.auto,
        size: 300.0,
      ),
    );
  }
}
