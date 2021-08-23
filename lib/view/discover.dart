import 'package:cardanosmartproj/model/colors.dart';
import 'package:cardanosmartproj/model/grad1.dart';

import 'package:flutter/material.dart';

class InfoNow extends StatelessWidget {
  const InfoNow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'App Info',
          style: TextStyle(
              color: text3, fontSize: 48, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
