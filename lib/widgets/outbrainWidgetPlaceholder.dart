import 'package:flutter/material.dart';
import 'dart:math';

class OutbrainWidget extends StatelessWidget {
  final List<String> recommendations = [
    "placeholder",
    "recommendations",
    "for",
    "articles",
  ];
  final Random rand = Random();

  Color getRandomColor() {
    return Color.fromARGB(
      rand.nextInt(256),
      rand.nextInt(256),
      rand.nextInt(256),
      rand.nextInt(256),
    );
  }

  Row getRecommendationRow(List<String> recommendations) {
    List<Widget> widgetList = recommendations
        .map((str) => Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: getRandomColor(),
          border: Border.all(
            color: Colors.black, // Border color
            width: 2.0, // Border width
          ),
        ),
        // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Center(
          child: Text(
            str,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    ))
        .toList();
    return Row(
        mainAxisAlignment: MainAxisAlignment.center, children: widgetList);
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          List.generate((recommendations.length / 2).floor(), (i) => 2 * i)
              .map((index) => getRecommendationRow(
              recommendations.sublist(index, index + 2)))
              .toList()),
    );
  }
}
