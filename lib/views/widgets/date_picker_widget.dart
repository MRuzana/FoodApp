import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/width_height.dart';
import 'package:food_app/views/styles/text_style.dart';

class DatePickerWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const DatePickerWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingL15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 160,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: const Color(0xFFE1E1E1),
              ),
            ),
            child: Padding(
              padding: paddingLR8,
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: const Color(0xFF6318AF),
                  ),
                  kWidth10,
                  Text(
                    text,
                    style: customTextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFF242628),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}