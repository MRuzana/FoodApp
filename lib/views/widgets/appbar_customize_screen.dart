import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/width_height.dart';
import 'package:food_app/views/styles/text_style.dart';

Widget appBarCustomizeScreen(BuildContext context) {
  return Column(
    children: [
      AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              'South Indian Breakfast',
              style: customTextStyle(
                fontSize: 16,
                color: const Color(0xFF000000),
                fontWeight: FontWeight.w400,
              ),
            ),
            kWidth3,
            Image.asset('assets/pencil_square.png')
          ],
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset('assets/back.png')),
      ),
    ],
  );
}