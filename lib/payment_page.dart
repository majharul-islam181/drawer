// ignore_for_file: prefer_const_constructors

import 'package:drawer/widget/menu_widget.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Payment Page'),
        leading: MenuWidget(),
      ),
    );
  }
}