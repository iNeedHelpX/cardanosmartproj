import 'package:flutter/material.dart';

List tabs() {
  return <Widget>[
    Tab(
      icon: Icon(Icons.qr_code_scanner),
      text: 'Scan',
    ),
    Tab(
      icon: Icon(Icons.info_outlined),
      text: 'Info',
    ),
    Tab(
      icon: Icon(Icons.account_box),
      text: 'Account',
    ),
  ];
}
