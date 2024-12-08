import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/strings.dart';
import 'package:food_app/utils/constants/width_height.dart';
import 'package:food_app/views/screens/customize_screen.dart';
import 'package:food_app/views/styles/text_style.dart';
import 'package:food_app/views/widgets/category.dart';
import 'package:food_app/views/widgets/custom_button.dart';
import 'package:food_app/views/widgets/hyphen.dart';

class MealBox extends StatelessWidget {
  const MealBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: padding10,
          child: Card(
            color: const Color(0xFFFFFFFF),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/dish.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 200,
                      ),
                      Positioned(
                          top: 16, child: Image.asset('assets/label.png')),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 21,
                            decoration: const BoxDecoration(
                                color: Color(0xCCFFFFFF),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12))),
                            child: Padding(
                              padding: paddingLR8,
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.person,
                                    size: 12,
                                  ),
                                  kWidth3,
                                  Text(
                                    AppStrings.minMax,
                                    style: customTextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFF323538)),
                                  ),
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: padding15,
                  child: Text(
                    AppStrings.dishTitle,
                    style: customTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF242628)),
                  ),
                ),
                const Padding(
                  padding: paddingLR15,
                  child: Divider(
                    height: 1,
                  ),
                ),
                Padding(
                  padding: paddingLR15,
                  child: Container(
                      width: 130,
                      height: 18,
                      decoration: const BoxDecoration(
                          color: Color(0xFFFDFAEC),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      child: Padding(
                        padding: paddingLR8,
                        child: Text(
                          '7 Categories & 12 Items',
                          style: customTextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFDC6803)),
                        ),
                      )),
                ),
                // catogory horizontal listview
                categories(),

                // hyphen seperator
                const Padding(
                  padding: paddingLR15,
                  child: HyphenSeparator(
                    color: Colors.grey,
                  ),
                ),
                kHeight20,

                // price section
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
                                '₹299',
                                style: customTextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF242628)),
                              ),
                              Text(
                                "/guest",
                                style: customTextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: const Color(0xFF484C51)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Add guest count to see',
                                style: customTextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF60666C)),
                              ),
                              Image.asset(
                                'assets/sparkles.png',
                              ),
                              Text(
                                'Dynamic Price',
                                style: customTextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF6318AF)),
                              ),
                            ],
                          ),
                          kHeight20
                        ],
                      ),
                      const Spacer(),

                      // customize button navigate to cusstomize screen
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) => const CustomizeScreen(),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
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
                          child: CustomButton(
                            text: 'Customize',
                            textStyle: customTextStyle(
                              fontSize: 12, 
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                            color: const Color(0xFF6318AF),
                            icon: Icons.chevron_right
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
