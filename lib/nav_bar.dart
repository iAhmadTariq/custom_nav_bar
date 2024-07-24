
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  final Function(int) onItemSelected;
  final int selectedIndex;
  const CustomNavBar({super.key, required this.onItemSelected, required this.selectedIndex});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  List items = [
    Icons.favorite,
    Icons.home,
    Icons.search,
  ];
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
              // setState(() {
              //   widget.selectedIndex = index;
              // });
              widget.onItemSelected(index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.all(8.0),
              width: widget.selectedIndex == index ? 60 : 50,
              height: widget.selectedIndex == index ? 60 : 50,
              transform: widget.selectedIndex == index ? Matrix4.translationValues(0, -10, 0):Matrix4.translationValues(0, 0, 0),
              decoration: BoxDecoration(
                color: widget.selectedIndex == index ? Colors.grey:const Color.fromARGB(255, 23, 23, 23),
                shape: BoxShape.circle,
              ),
              child: Icon(items[index],color: widget.selectedIndex != index ? Colors.grey:const Color.fromARGB(255, 23, 23, 23),),
            ),
          );
        }),
      ),
    );
  }
}
