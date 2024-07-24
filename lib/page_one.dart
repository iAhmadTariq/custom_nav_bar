import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

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
      backgroundColor: Colors.black12,
      body: ListView.separated(
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
    );
  }
}
