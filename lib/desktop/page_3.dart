import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int _currentIndex = 0;
  late final PageController _pageController;

  final List<String> proImg = [
    "assets/images/C++.png",
    "assets/images/Python.png",
    "assets/images/java.png",
    "assets/images/Dart_logo.png",
    "assets/images/Flutter_logo.png",
    "assets/images/api.png",
    "assets/images/logo.png",
    "assets/images/cp.png",
    "assets/images/DS.png",
    "assets/images/lx.png",
    "assets/images/oop.png",
    "assets/images/mysql.png",
    "assets/images/firebase.png",
    "assets/images/git.png",
    "assets/images/iot.png",
  ];

  final List<String> proLanguage = [
    "C++",
    "Python",
    "Java",
    "Dart",
    "Flutter",
    "REST API",
    "MVVM Architecture",
    "Competitive Programming",
    "Data Structure Algorithm",
    "Linux",
    "Object Oriented Programming",
    "MySQL Database",
    "Firebase",
    "Git & GitHub",
    "IoT"
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);

    // Start auto-scrolling after a delay
    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentIndex < proImg.length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }
      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.settings,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "SKILLS",
                style: GoogleFonts.sourceCodePro(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width * 0.9,
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: PageView.builder(
                controller: _pageController,
                itemCount: proImg.length,
                itemBuilder: (context, index) {
                  return AnimatedBuilder(
                    animation: _pageController,
                    builder: (context, child) {
                      double value = 1.0;
                      if (_pageController.position.haveDimensions) {
                        value = _pageController.page! - index;
                        value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
                      }
                      return Center(
                        child: SizedBox(
                          height: Curves.easeInOut.transform(value) * 200,
                          width: Curves.easeInOut.transform(value) * 350,
                          child: child,
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff87cefa), Colors.black54],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image.asset(
                              proImg[index],
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Text(
                                proLanguage[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
