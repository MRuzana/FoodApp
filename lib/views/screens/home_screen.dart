import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/strings.dart';
import 'package:food_app/views/styles/text_style.dart';
import 'package:food_app/views/widgets/meal_type.dart';
import 'package:food_app/views/widgets/meal_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFE4E6E7),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(267),
          child: _appBar(context),
        ),
        body: const TabBarView(
          children: [
            // tab 1 content 
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MealType(),
                  MealBox(),
                   
                ],
              ),
            ),

            // tab 2 content
            Center(child: Text('Tab 2 Content')),
          ],
        ),
      ),
    );
  }
}

// appbar 

Widget _appBar(BuildContext context) {
  return AppBar(
    title: Center(
      child: Text(
        AppStrings.headerTitle,
        style: customTextStyle(
          fontSize: 18,
          color: const Color(0xFFFFFFFF),
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    leading: IconButton(
      onPressed: () {},
      icon: Image.asset('assets/arrow-left.png'),
    ),
    flexibleSpace: SafeArea(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 267,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/wedding.png'),
              ),
            ),
          ),

          // two tabs

          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: TabBar(
              tabs: [
                _buildTab('Bulk Food Delivery', isSelected: true),
                _buildTab('Catering Service', isSelected: false),
              ],
              indicator: const BoxDecoration(),
              dividerColor: Colors.transparent,
              indicatorColor: Colors.transparent,
              labelColor: const Color(0xFF6318AF),
              unselectedLabelColor: const Color(0xFF60666C),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildTab(String tabName, {required bool isSelected}) {
  return Container(
    width: 171,
    height: 34,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: isSelected ? const Color(0xFFFFFFFF) : const Color(0xFFE4E6E7),
    ),
    child: Center(
      child: Text(
        tabName,
        style: customTextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      ),
    ),
  );
}
