import 'package:flutter/material.dart';
import 'package:flutter_test_app/nav_bar.dart';
import 'package:flutter_test_app/page_one.dart';
import 'package:flutter_test_app/page_three.dart';
import 'package:flutter_test_app/page_two.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    PageController _pageController = PageController();
    int _selectedIndex = 0;

  @override
  void initState() {
    _pageController.addListener((){
      setState(() {
        _selectedIndex = _pageController.page!.round();
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text(
          'Custom App Bar',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: const [PageThree(), PageOne(), PageTwo()],
            
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomNavBar(
              selectedIndex: _selectedIndex,
              onItemSelected: (index) {
                _pageController.jumpToPage(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
