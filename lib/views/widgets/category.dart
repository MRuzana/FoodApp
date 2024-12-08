import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/width_height.dart';
import 'package:food_app/views/styles/text_style.dart';

Widget categories() {
  final List<String> catList = [
    "2 Starter",
    "1 Mains",
    "3 Drinks",
    "2 Starter",
    "2 Starter",
    "2 Starter",
    "2 Starter",
  ];
  return Padding(
    padding: paddingLR15,
    child: SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: paddingR10,
              child: Column(
                children: [
                  const Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xFFFAEFC7),
                        radius: 35,
                      ),
                      Positioned(
                          top: 10,
                          bottom: -7,
                          right: 0,
                          left: 0,
                          child: Image(
                            image: AssetImage('assets/img.png'),
                            fit: BoxFit.contain,
                          )),
                    ],
                  ),
                  Text(
                    catList[index],
                    style: customTextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF222529),
                    ),
                  ),
                ],
              ),
            );
          }),
    ),
  );
}
