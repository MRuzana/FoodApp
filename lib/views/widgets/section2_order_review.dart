import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/width_height.dart';
import 'package:food_app/views/styles/text_style.dart';

Widget section2OrderReview() {
  return Padding(
    padding: paddingLR15,
    child: Container(
      width: double.infinity,
      height: 170,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 30,
            decoration: const BoxDecoration(
                color: Color(0xFF6318AF),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/hurray.png'),
                Text(
                  'Hurray! You saved',
                  style: customTextStyle(
                    fontSize: 13,
                    color: const Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                kWidth3,
                Text(
                  '₹17,130/-',
                  style: customTextStyle(
                    fontSize: 14,
                    color: const Color(0xFFFBC437),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                kWidth3,
                Text(
                  'on total order',
                  style: customTextStyle(
                    fontSize: 13,
                    color: const Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          kHeight15,
          Padding(
            padding: paddingLR15,
            child: Row(
              children: [
                Text(
                  'Total',
                  style: customTextStyle(
                    fontSize: 14,
                    color: const Color(0xFF242628),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Spacer(),
                Text(
                  '₹24,600',
                  style: customTextStyle(
                    fontSize: 14,
                    color: const Color(0xFF242628),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: paddingLR15,
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      'Dynamic pricing discount ',
                      style: customTextStyle(
                        fontSize: 14,
                        color: const Color(0xFF242628),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    kWidth3,
                    Image.asset('assets/sparkles.png')
                  ],
                ),
                const Spacer(),
                Text(
                  '-₹8000',
                  style: customTextStyle(
                    fontSize: 14,
                    color: const Color(0xFF242628),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          kHeight10,
          const Padding(
            padding: paddingLR15,
            child: Divider(
              thickness: 1,
              color: Color(0xFFE4E6E7),
            ),
          ),
          kHeight15,
          Padding(
            padding: paddingLR15,
            child: Row(
              children: [
                Text(
                  'To Pay',
                  style: customTextStyle(
                    fontSize: 15,
                    color: const Color(0xFF242628),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Text(
                  '₹41800',
                  style: customTextStyle(
                    fontSize: 15,
                    color: const Color(0xFF242628),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
