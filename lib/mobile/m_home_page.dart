import 'package:flutter/material.dart';

class MHomePage extends StatelessWidget {
  const MHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueAccent[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Mobile"),
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        )),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent[200],
        ),
      ),
    );
  }
}
