import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/width_height.dart';
import 'package:food_app/views/styles/text_style.dart';

Widget section1orderReview() {
  return Padding(
    padding: paddingLR15,
    child: Container(
      width: double.infinity,
      height: 220,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        children: [
          Padding(
            padding: padding15,
            child: Row(
              children: [
                Image.asset('assets/serviceIcon.png'),
                kWidth3,
                Text(
                  'Millet Breakfast',
                  style: customTextStyle(
                    fontSize: 14,
                    color: const Color(0xFF242628),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Text(
                  'Edit',
                  style: customTextStyle(
                    fontSize: 14,
                    color: const Color(0xFFED4596),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: padding15,
            child: Row(
              children: [
                const Icon(
                  Icons.person,
                  size: 16,
                ),
                Text(
                  '265',
                  style: customTextStyle(
                    fontSize: 12,
                    color: const Color(0xFF484C51),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                kWidth10,
                const Icon(
                  Icons.calendar_today_outlined,
                  size: 16,
                ),
                kWidth3,
                Text(
                  '11/09/2024',
                  style: customTextStyle(
                    fontSize: 12,
                    color: const Color(0xFF484C51),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                kWidth10,
                const Icon(
                  Icons.alarm,
                  size: 16,
                ),
                kWidth3,
                Text(
                  '12:30 AM - 02:30',
                  style: customTextStyle(
                    fontSize: 12,
                    color: const Color(0xFF484C51),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color(0xFFE4E6E7),
          ),
          kHeight10,
          Padding(
            padding: paddingLR15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              
                Text(
                  'Hide selected items', // This should be at the start
                  style: customTextStyle(
                    fontSize: 12,
                    color: const Color(0xFF60666C),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Spacer(),
                Image.asset('assets/chevrondown.png'),
              ],
            ),
          ),
          kHeight10,
          const Divider(
            thickness: 1,
            color: Color(0xFFE4E6E7),
          ),
          Padding(
            padding: paddingLR15,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                          Text(
                        'Subtotal', // This should be at the start
                        style: customTextStyle(
                          fontSize: 13,
                          color: const Color(0xFF242628),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                         const Text(
                                '₹24,600',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF93999F),
                                    fontWeight: FontWeight.w300,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              Text(
                        '₹22,200', // This should be at the start
                        style: customTextStyle(
                          fontSize: 14,
                          color: const Color(0xFF242628),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      ],
                    ),
                     Text(
                        'Incl. taxes and charges', // This should be at the start
                        style: customTextStyle(
                          fontSize: 10,
                          color: const Color(0xFF93999F),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.chevron_right,color:  Color(0xFF93999F),)
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
