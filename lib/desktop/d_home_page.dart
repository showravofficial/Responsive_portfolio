import 'package:flutter/material.dart';
import 'package:showrav_dev/desktop/page_1.dart';
import 'package:showrav_dev/desktop/page_2.dart';
import 'package:showrav_dev/desktop/page_3.dart';
import 'package:showrav_dev/desktop/page_4.dart';
import 'package:showrav_dev/desktop/page_5.dart';

class DHomePage extends StatefulWidget {
  const DHomePage({super.key});

  @override
  _DHomePageState createState() => _DHomePageState();
}

class _DHomePageState extends State<DHomePage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _page1Key = GlobalKey();
  final GlobalKey _page2Key = GlobalKey();
  final GlobalKey _page3Key = GlobalKey();
  final GlobalKey _page4Key = GlobalKey();
  final GlobalKey _page5Key = GlobalKey();

  void _scrollToPage(GlobalKey key) {
    final RenderBox renderBox =
        key.currentContext?.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero).dy;
    _scrollController.animateTo(
      position + _scrollController.offset,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("D e s k T o p"),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          ),
          side: BorderSide(
            color: Colors.white,
            width: 2.0,
          ),
        ),
        actions: [
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => _scrollToPage(_page1Key),
                    child: Text("Page 1"),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () => _scrollToPage(_page2Key),
                    child: Text("Page 2"),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () => _scrollToPage(_page3Key),
                    child: Text("Page 3"),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () => _scrollToPage(_page4Key),
                    child: Text("Page 4"),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () => _scrollToPage(_page5Key),
                    child: Text("Page 5"),
                  ),
                ],
              ),
            ),
          )
        ],
        shadowColor: Colors.black,
        elevation: 20,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: _scrollController,
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Page1(key: _page1Key),
              SizedBox(
                height: 10,
              ),
              Page2(key: _page2Key),
              SizedBox(
                height: 10,
              ),
              Page3(key: _page3Key),
              SizedBox(
                height: 10,
              ),
              Page4(key: _page4Key),
              SizedBox(
                height: 10,
              ),
              Page5(key: _page5Key),
            ],
          ),
        ),
      ),
    );
  }
}
