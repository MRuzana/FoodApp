import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/width_height.dart';
import 'package:food_app/views/styles/text_style.dart';

class VegNonVegToggle extends StatelessWidget {
  const VegNonVegToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0), // Optional rounded corners
      ),
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: Row(
          children: [
            kWidth5,
            Image.asset(
              'assets/leaf.png',
              fit: BoxFit.cover,
              width: 11,
              height: 11,
            ),
            kWidth5,
            Text(
              'Pure Veg',
              style: customTextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF0A7047),
              ),
            ),
            kWidth5,
            Image.asset('assets/vegToggle.png'),
            kWidth10,
            Padding(
              padding: padding8,
              child: Container(
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFFE1E1E1),
                  ),
                ),
                child: Padding(
                  padding: padding4,
                  child: Row(
                    children: [
                      kWidth5,
                      Image.asset('assets/NonVeg.png'),
                      kWidth5,
                      Text(
                        'Pure Veg',
                        style: customTextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF912018),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
