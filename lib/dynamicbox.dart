import 'package:flutter/material.dart';

class DynamicBox extends StatefulWidget {
  const DynamicBox({super.key});

  @override
  State<DynamicBox> createState() => _DynamicBoxState();
}

class _DynamicBoxState extends State<DynamicBox> {
  List colors = [Colors.blue, Colors.red, Colors.black, Colors.pink];
  int colorIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: GestureDetector(
            onTap: () {
              changeColor();
            },
            child: Container(
              width: 200,
              height: 200,
              color: colors[colorIndex],
            ),
          ),
        )
      ],
    );
  }

  changeColor() {
    setState(() {
      if (colorIndex < 3) {
        colorIndex++;
      } else {
        colorIndex = 0;
      }
    });
  }
}
