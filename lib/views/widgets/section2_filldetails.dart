import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/width_height.dart';
import 'package:food_app/views/styles/text_style.dart';
import 'package:food_app/views/widgets/date_picker_widget.dart';

Widget section2FillDetails() {
  return Padding(
    padding: paddingLR15,
    child: Container(
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        children: [
          Padding(
            padding: padding15,
            child: Row(
              children: [
                Text(
                  'Occasion',
                  style: customTextStyle(
                    fontSize: 14,
                    color: const Color(0xFF93999F),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                kWidth5,
                Text(
                  'Birthday',
                  style: customTextStyle(
                    fontSize: 14,
                    color: const Color(0xFF242628),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xFF93999F),
                ),
              ],
            ),
          ),
          const Padding(
            padding: paddingLR15,
            child: Divider(
              thickness: 1,
              color: Color(0xFFE4E6E7),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: padding15, // Ensure it aligns properly
                child: Text(
                  'Date and Time', // This should be at the start
                  style: customTextStyle(
                    fontSize: 14,
                    color: const Color(0xFF242628),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          const Row(
            children: [
              DatePickerWidget(
                  icon: Icons.calendar_today_outlined, text: '12/11/2024'),
              DatePickerWidget(icon: Icons.alarm_sharp, text: '2:00 - 4:00 PM')
            ],
          ),
        ],
      ),
    ),
  );
}
