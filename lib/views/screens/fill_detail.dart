import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/width_height.dart';
import 'package:food_app/views/screens/order_review_screen.dart';
import 'package:food_app/views/styles/text_style.dart';
import 'package:food_app/views/widgets/custom_button.dart';
import 'package:food_app/views/widgets/section2_filldetails.dart';
import 'package:food_app/views/widgets/section3_filldetails.dart';

class FillDetails extends StatelessWidget {
  const FillDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FB),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55), // Adjust height as needed
        child: _appBar(context),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(),
            // section 1 title
            section1(),

            // section 2 details about occasion
            section2FillDetails(),

            // section3 price details
            section3FillDetails(context),

            const Spacer(),
            // section4 order review button
            section4(context),
          ],
        ),
      ),
    );
  }
}

PreferredSizeWidget _appBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      'Fill Details',
      style: customTextStyle(
        fontSize: 14,
        color: const Color(0xFF000000),
        fontWeight: FontWeight.w400,
      ),
    ),
    leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Image.asset('assets/back.png')),
  );
}

Widget section1() {
  return Padding(
    padding: padding15,
    child: Row(
      children: [
        Image.asset('assets/serviceIcon.png'),
        kWidth3,
        Text(
          'South Indian Breakfast',
          style: customTextStyle(
            fontSize: 16,
            color: const Color(0xFF000000),
            fontWeight: FontWeight.w400,
          ),
        ),
        kWidth3,
        Image.asset('assets/pencil_square.png')
      ],
    ),
  );
}

Widget section4(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const OrderReview(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
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
    child: Container(
      width: double.infinity,
      height: 76,
      color: Colors.white,
      child: CustomButton4(
          width: double.infinity,
          height: 48,
          text: 'Order Review',
          color: const Color(0xFF6318AF),
          textStyle: customTextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white)),
    ),
  );
}
