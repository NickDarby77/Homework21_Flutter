import 'package:flutter/material.dart';

class DotsWidget extends StatelessWidget {
  const DotsWidget({
    super.key,
    this.color1 = Colors.white,
  });

  final Color color1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 1,
            color: const Color(0xff000000),
          ),
          color: color1,
        ),
      ),
    );
  }
}
