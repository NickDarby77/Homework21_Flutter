import 'package:flutter/material.dart';
import '../widgets/dots_widget.dart';
import '../widgets/text_field_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1st option: resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFFFFFF),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xffA9A7A7),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
      // 2nd option: Wrap Column with SingleChildScrollView and make reversed = true
      body: ListView(
        shrinkWrap: true,
        reverse: true,
        children: [
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 47, horizontal: 30),
            child: Text(
              'And last but no the least, we want to know some details about you',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 28,
                letterSpacing: 0.4,
                fontWeight: FontWeight.w800,
                color: Color(0xff000000),
                fontFamily: 'Nunito',
              ),
            ),
          ),
          const TextFieldWidget(text1: 'Your name'),
          const TextFieldWidget(text1: 'Your job'),
          const TextFieldWidget(text1: 'Phone number'),
          const SizedBox(height: 150),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              DotsWidget(),
              DotsWidget(),
              DotsWidget(),
              DotsWidget(color1: Colors.black),
            ],
          ),
        ].reversed.toList(),
      ),
    );
  }
}
