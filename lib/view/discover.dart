import 'package:cardanosmartproj/model/colors.dart';
import 'package:cardanosmartproj/model/grad1.dart';

import 'package:flutter/material.dart';

class InfoNow extends StatelessWidget {
  const InfoNow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: grad1(),
      ),
      child: Center(
        child: Text(
          'Covid status on ethereum',
          style: TextStyle(
              color: text2, fontSize: 48, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
