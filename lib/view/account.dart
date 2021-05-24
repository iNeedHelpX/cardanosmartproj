import 'package:cardanosmartproj/model/colors.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Account',
          style: TextStyle(
              color: text3, fontSize: 48, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
