
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.transparent, Colors.black12,Colors.black26, Colors.black45, Colors.black54, Colors.black87, Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(3, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.all(8.0),
              width: selectedIndex == index ? 60 : 50,
              height: selectedIndex == index ? 60 : 50,
              transform: selectedIndex == index ? Matrix4.translationValues(0, -10, 0):Matrix4.translationValues(0, 0, 0),
              decoration: BoxDecoration(
                color: selectedIndex == index ? Colors.grey:const Color.fromARGB(255, 23, 23, 23),
                shape: BoxShape.circle,
              ),
            ),
          );
        }),
      ),
    );
  }
}
