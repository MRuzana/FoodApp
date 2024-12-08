import 'package:flutter/material.dart';
import 'package:food_app/controller/item_add_provider.dart';
import 'package:food_app/utils/constants/width_height.dart';
import 'package:food_app/views/styles/text_style.dart';
import 'package:food_app/views/widgets/custom_button.dart';
import 'package:provider/provider.dart';

class ItemsGrid extends StatelessWidget {
  ItemsGrid({super.key});

  final List<Map<String, String>> items = [
    {'ItemName': 'Idli Sambar', 'ItemImage': 'assets/idli.png'},
    {'ItemName': 'Appam', 'ItemImage': 'assets/appam.png'},
    {'ItemName': 'Dosa', 'ItemImage': 'assets/dosa.png'},
    {'ItemName': 'Wada', 'ItemImage': 'assets/vada.png'},
    {'ItemName': 'Uppma', 'ItemImage': 'assets/upma.png'},
    {'ItemName': 'Bonda', 'ItemImage': 'assets/bonda.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Display two products per row
          crossAxisSpacing: 15, // Space between columns
          mainAxisSpacing: 15, // Space between rows
          childAspectRatio: 0.6, // Adjust the size ratio of each item
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemCard(
            item: items[index],
            index: index,
          );
        },
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.item, required this.index});
  final Map<String, String> item;
  final int index;

  @override
  Widget build(BuildContext context) {
    //final buttonStateProvider = Provider.of<ButtonStateProvider>(context);
    return Card(
      elevation: 4,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                    child: Image.asset(item['ItemImage']!)),
                Positioned.fill(
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset('assets/green.png')))
              ],
            ),
            Padding(
              padding: padding8,
              child: Text(
                item['ItemName']!,
                style: customTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF242628)),
              ),
            ),
            const Spacer(),
            Consumer<ButtonStateProvider>(
              builder: (context, buttonStateProvider, child) {
                return GestureDetector(
                  onTap: () {
                    buttonStateProvider
                        .toggleState(index); // Toggle button state on tap
                  },
                  child: CustomButton1(
                    text: buttonStateProvider.getButtonText(index),
                    color: buttonStateProvider.getButtonColor(index),
                    borderColor: const Color(0xFFE70472),
                    textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: buttonStateProvider.getButtonTextColor(index)),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
