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

class _DHomePageState extends State<DHomePage> with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _page1Key = GlobalKey();
  final GlobalKey _page2Key = GlobalKey();
  final GlobalKey _page3Key = GlobalKey();
  final GlobalKey _page4Key = GlobalKey();
  final GlobalKey _page5Key = GlobalKey();
  
  late final AnimationController _page1Controller;
  late final AnimationController _page2Controller;
  late final AnimationController _page3Controller;
  late final AnimationController _page4Controller;
  late final AnimationController _page5Controller;

  @override
  void initState() {
    super.initState();
    
    _page1Controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _page2Controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _page3Controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _page4Controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _page5Controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    Future.delayed(const Duration(seconds: 1), () {
      _page2Controller.forward();
    });

    Future.delayed(const Duration(seconds: 2), () {
      _page3Controller.forward();
    });

    Future.delayed(const Duration(seconds: 3), () {
      _page4Controller.forward();
    });

    Future.delayed(const Duration(seconds: 4), () {
      _page5Controller.forward();
    });
  }

  void _scrollToPage(GlobalKey key) {
    final RenderBox renderBox = key.currentContext?.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero).dy;
    _scrollController.animateTo(
      position + _scrollController.offset,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _page1Controller.dispose();
    _page2Controller.dispose();
    _page3Controller.dispose();
    _page4Controller.dispose();
    _page5Controller.dispose();
    super.dispose();
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
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () => _scrollToPage(_page2Key),
                    child: Text("Page 2"),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () => _scrollToPage(_page3Key),
                    child: Text("Page 3"),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () => _scrollToPage(_page4Key),
                    child: Text("Page 4"),
                  ),
                  SizedBox(height: 10),
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
          controller: _scrollController,
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              AnimatedBuilder(
                animation: _page1Controller,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(100 * (1 - _page1Controller.value), 0),
                    child: Opacity(
                      opacity: _page1Controller.value,
                      child: Page1(key: _page1Key),
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
              AnimatedBuilder(
                animation: _page2Controller,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(-100 * (1 - _page2Controller.value), 0),
                    child: Opacity(
                      opacity: _page2Controller.value,
                      child: Page2(key: _page2Key),
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
              AnimatedBuilder(
                animation: _page3Controller,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(100 * (1 - _page3Controller.value), 0),
                    child: Opacity(
                      opacity: _page3Controller.value,
                      child: Page3(key: _page3Key),
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
              AnimatedBuilder(
                animation: _page4Controller,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(-100 * (1 - _page4Controller.value), 0),
                    child: Opacity(
                      opacity: _page4Controller.value,
                      child: Page4(key: _page4Key),
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
              AnimatedBuilder(
                animation: _page5Controller,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(100 * (1 - _page5Controller.value), 0),
                    child: Opacity(
                      opacity: _page5Controller.value,
                      child: Page5(key: _page5Key),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
