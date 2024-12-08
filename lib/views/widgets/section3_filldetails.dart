import 'package:flutter/material.dart';
import 'package:food_app/controller/counter_provider.dart';
import 'package:food_app/utils/constants/width_height.dart';
import 'package:food_app/views/styles/text_style.dart';
import 'package:provider/provider.dart';

Widget section3FillDetails(BuildContext context) {
  final counterProvider = Provider.of<CounterProvider>(context);
  return Padding(
    padding: padding15,
    child: Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        children: [
          Padding(
            padding: padding15,
            child: Row(
              children: [
                Text(
                  'Price per plate :',
                  style: customTextStyle(
                    fontSize: 14,
                    color: const Color(0xFF242628),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      '20%',
                      style: customTextStyle(
                        fontSize: 14,
                        color: const Color(0xFF257B3E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    kWidth3,
                    const Icon(
                      Icons.arrow_downward,
                      color: Colors.black,
                      size: 16,
                    ),
                    kWidth3,
                    const Text(
                      '₹299',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF747474),
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.lineThrough),
                    ),
                    kWidth3,
                    Text(
                      '₹240',
                      style: customTextStyle(
                        fontSize: 18,
                        color: const Color(0xFF242628),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: paddingLR15,
            child: Divider(
              thickness: 1,
              color: Color(0xFFE4E6E7),
            ),
          ),
          Padding(
            padding: padding15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Total Guests', // This should be at the start
                  style: customTextStyle(
                    fontSize: 14,
                    color: const Color(0xFF333333),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    counterProvider.decrement();
                  },
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xFFF6F6F6),
                    backgroundImage: AssetImage('assets/minus.png'),
                  ),
                ),
                kWidth5,
                Container(
                  width: 88,
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      border: Border.all(color: const Color(0xFF9D9D9D))),
                  child: Center(
                    child: Text(
                      '${context.watch<CounterProvider>().counter}',
                      style: customTextStyle(
                        fontSize: 18,
                        color: const Color(0xFF242628),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                kWidth5,
                GestureDetector(
                  onTap: () {
                    counterProvider.increment();
                  },
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xFFFBDAEA),
                    backgroundImage: AssetImage('assets/plus.png'),
                  ),
                )
              ],
            ),
          ),
          Slider(
            value: context.watch<CounterProvider>().counter.toDouble(),
            min: 10,
            max: 1500,
            divisions: 90,
            activeColor: const Color(0xFF6318AF),
            inactiveColor: const Color(0xFFE1E1E1),
            label: '${context.watch<CounterProvider>().counter}',
            onChanged: (double newValue) {
              context.read<CounterProvider>().setCounter(newValue);
            },
          ),
          Padding(
            padding: paddingLR20,
            child: Row(
              children: [
                Text(
                  '10',
                  style: customTextStyle(
                    fontSize: 12,
                    color: const Color(0xFF545454),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '(min)',
                  style: customTextStyle(
                    fontSize: 10,
                    color: const Color(0xFF737373),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Spacer(),
                Text(
                  '1500',
                  style: customTextStyle(
                    fontSize: 10,
                    color: const Color(0xFF737373),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          kHeight30,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/sparkles.png'),
              kWidth3,
              Text(
                'Dynamic Pricing',
                style: customTextStyle(
                  fontSize: 11,
                  color: const Color(0xFF6318AF),
                  fontWeight: FontWeight.w600,
                ),
              ),
              kWidth3,
              Text(
                'more guests, more savings.',
                style: customTextStyle(
                  fontSize: 13,
                  color: const Color(0xFF444444),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
