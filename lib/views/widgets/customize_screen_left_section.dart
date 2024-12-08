import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/width_height.dart';
import 'package:food_app/views/styles/text_style.dart';

class LeftListView extends StatelessWidget {
  const LeftListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {
        'MealType': 'Starters',
        'ItemImage': 'assets/starter.png',
        'ItemCount': '2/2'
      },
      {
        'MealType': 'Mains',
        'ItemImage': 'assets/mains.png',
        'ItemCount': '2/2'
      },
      {
        'MealType': 'Sweets',
        'ItemImage': 'assets/sweets.png',
        'ItemCount': '0/1'
      },
    ];

    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0), // Optional rounded corners
      ),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          // Accessing the current item
          final item = items[index];

          return Column(
            children: [
              Image.asset(item['ItemImage']!),
              kHeight10,
              Text(
                item['MealType']!,
                style: customTextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF252229),
                ),
              ),
              kHeight5,
              Container(
                  width: 40,
                  height: 21,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFDEDDDE),
                      )),
                  child: Center(
                      child: Text(
                    item['ItemCount']!,
                    style: customTextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFF515151),
                    ),
                  ))),
              kHeight10,
            ],
          );
        },
      ),
    );
  }
}
