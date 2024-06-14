import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 15.0, right: 15.0),
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent[200],
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }
}
