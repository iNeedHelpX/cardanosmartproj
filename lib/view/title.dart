import 'package:cardanosmartproj/model/colors.dart';
import 'package:flutter/material.dart';

class CovidTitle extends StatelessWidget {
  const CovidTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: canadacolor2,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        'Scan your QR Code for check-in',
        style: TextStyle(
            fontSize: 24, color: lightyellow, fontWeight: FontWeight.w900),
      ),
      // child: Text(
      //   'Scan QR code',
      //   style:
      //       TextStyle(fontSize: 24, color: text1, fontWeight: FontWeight.w800),
      // ),
    );
  }
}
