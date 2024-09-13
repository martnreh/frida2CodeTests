//File: filter_search_screen.dart//

import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: Container());
  }

  Widget priceInput(String text) {
    return Container(
      width: 150,
      padding: EdgeInsets.symmetric(vertical: 14.0),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFDADADA)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: Color(0xFF223263)),
        ),
      ),
    );
  }
}
