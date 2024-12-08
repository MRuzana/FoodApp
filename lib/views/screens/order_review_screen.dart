import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/width_height.dart';
import 'package:food_app/views/styles/text_style.dart';
import 'package:food_app/views/widgets/custom_button.dart';
import 'package:food_app/views/widgets/section1_order_review.dart';
import 'package:food_app/views/widgets/section2_order_review.dart';

class OrderReview extends StatelessWidget {
  const OrderReview({super.key});

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
        children: [
         
          // section1 : item details
          kHeight15,
          section1orderReview(),
          
          // section2 : price details
          kHeight30,
          section2OrderReview(),

          // bottom section : order placement
          const Spacer(),
          const BottomSectionOrderReview()
        ],
      )),
    );
  }
}

PreferredSizeWidget _appBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      'Order Review',
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
        child: const Icon(Icons.arrow_back)),
  );
}

class BottomSectionOrderReview extends StatelessWidget {
  const BottomSectionOrderReview({super.key});

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
              Text(
                'To Pay',
                style: customTextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF60666C),
                ),
              ),
              Padding(
                padding: paddingL10,
                child: Text(
                  '₹90,500',
                  style: customTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF242628),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),

          // navigate to fill details screen

          CustomButton4(
              height: 48,
              width: 167,
              text: 'Place Order',
              color: const Color(0xFF6328AF),
              textStyle: customTextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white))
        ],
      ),
    );
  }
}
