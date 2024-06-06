import 'package:flutter/material.dart';

class DetailsSize extends StatelessWidget {
  const DetailsSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Size",
              style: TextStyle(fontSize: 23, color: Colors.grey[400]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Medium",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
        VerticalDivider(
          width: 38,
          thickness: 2,
          color: Colors.grey[400],
          indent: 15,
          endIndent: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Calories",
              style: TextStyle(fontSize: 23, color: Colors.grey[400]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "150 Kcal",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
        VerticalDivider(
          width: 38,
          thickness: 2,
          color: Colors.grey[400],
          indent: 15,
          endIndent: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cooking",
              style: TextStyle(fontSize: 23, color: Colors.grey[400]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "5-10 Min",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
