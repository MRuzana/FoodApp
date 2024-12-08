import 'package:flutter/material.dart';
import 'package:food_app/controller/meal_type_provider.dart';
import 'package:food_app/views/styles/text_style.dart';
import 'package:provider/provider.dart';

class MealType extends StatelessWidget {
  const MealType({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
    "All(8)",
    "Breakfast",
    "Lunch & Dinner",
    "Snacks"
  ];
    return SizedBox(
      height: 44, // Fixed height for the row
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: items.map((item) {
            int index = items.indexOf(item);
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,  
              ),
              child: GestureDetector(
                onTap: () {
                  Provider.of<MealTypeIndexProvider>(context,listen: false).updateIndex(index);
                },
                child: Consumer<MealTypeIndexProvider>(
                  builder: (context, value, child) {
                    return Text(
                    item,
                    style: customTextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: value.selectedIndex == index ? const Color(0xFFE70472) :  const Color(0xFF60666C),
                    ),
                  );
                  },
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
