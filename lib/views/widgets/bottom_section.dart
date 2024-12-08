import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/width_height.dart';
import 'package:food_app/views/screens/fill_detail.dart';
import 'package:food_app/views/styles/text_style.dart';
import 'package:food_app/views/widgets/custom_button.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0), // Optional rounded corners
      ),
      child: Row(
        children: [
          Column(
            children: [
              kHeight25,
              Text(
                'Price per plate',
                style: customTextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF93999F),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: paddingL10,
                    child: Text(
                      '₹240',
                      style: customTextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF242628),
                      ),
                    ),
                  ),
                  Text(
                    '/per plate',
                    style: customTextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF323538),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),

          // navigate to fill details screen

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const FillDetails(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(1.0, 0.0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    );
                  },
                ),
              );
            },
            child: CustomButton4(
              height: 48,
              width: 167,
                text: 'Fill Details',
                color: const Color(0xFF6328AF),
                textStyle: customTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
          )
        ],
      ),
    );
  }
}
