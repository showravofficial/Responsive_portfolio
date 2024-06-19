import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int _currentIndex = 0;
  late final PageController _pageController;

  List<String> edulogo = [
    "assets/images/uits.png",
    "assets/images/fgc.png",
    "assets/images/fgphs.png",
  ];
  List<String> eduName = [
    "University of Information Technology and Sciences (UITS).",
    "Feni Government College.",
    "Feni Govt. Pilot High School.",
  ];
  List<String> eduDept = [
    "BSc. in Computer Science and Engineering.",
    "Department of science.",
    "Department of science.",
  ];
  List<String> eduDuration = [
    "2020 - 2023",
    "HSC: 2018",
    "SSC: 2016",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
    _startAutoSlide();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoSlide() {
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % edulogo.length;
          _pageController.animateToPage(
            _currentIndex,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        });
        _startAutoSlide();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.school,
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "EDUCATION",
                  style: GoogleFonts.sourceCodePro(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 15.0),
          decoration: BoxDecoration(
            // color: Colors.deepOrangeAccent[200],
            borderRadius: BorderRadius.circular(40),
          ),
          child: PageView.builder(
            controller: _pageController,
            itemCount: edulogo.length,
            itemBuilder: (context, index) {
              return AnimatedSwitcher(
                duration: Duration(milliseconds: 500),
                child: ListTile(
                  key: ValueKey<int>(_currentIndex),
                  leading: Image.asset(
                    edulogo[index],
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                  title: Text(eduName[index]),
                  subtitle: Text(eduDept[index]),
                  trailing: Text(
                    eduDuration[index],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
