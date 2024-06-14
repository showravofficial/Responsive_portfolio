import 'package:flutter/material.dart';
import 'package:showrav_dev/desktop/d_home_page.dart';
import 'package:showrav_dev/mobile/m_home_page.dart';
import 'package:showrav_dev/responsive/responsive_layout.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return DisplayManage();
  }
}

class DisplayManage extends StatelessWidget {
  const DisplayManage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         primaryColor: Colors.deepPurple, 
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: ResponsiveLayout(
          desktopBody: DHomePage(),
          mobileBody: MHomePage(),
        ),
      ),
    );
  }
}
