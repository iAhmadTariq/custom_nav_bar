import 'package:flutter/material.dart';
import 'package:flutter_test_app/nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    final List colors = [
      Colors.blue[300],
      Colors.green[300],
      Colors.pink[300],
      Colors.purple[300],
      Colors.orange[300]
    ];
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
          ListView.separated(
            itemBuilder: (context, index) => Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colors[index % 5],
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: 10,
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: CustomNavBar(),
          ),
        ],
      ),
    );
  }
}
