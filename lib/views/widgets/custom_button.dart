import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final IconData? icon;
  final TextStyle textStyle;

  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    this.icon,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Center(
        child: Container(
          height: 35,
          decoration: BoxDecoration(
            color: color, // Use the passed color
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    text, // Use the passed text
                    style: textStyle, // Use the passed text style
                  ),
                ),
                Icon(icon, color: Colors.white), // Use the passed icon
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton1 extends StatelessWidget {
  final String text;
  final Color color;
  final IconData? icon;
  final TextStyle textStyle;
  final Color? borderColor;

  const CustomButton1(
      {super.key,
      required this.text,
      required this.color,
      this.icon,
      required this.textStyle,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Center(
        child: Container(
          height: 35,
          decoration: BoxDecoration(
              color: color, // Use the passed color
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: borderColor!)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                text, // Use the passed text
                style: textStyle, // Use the passed text style
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class CustomButton2 extends StatelessWidget {
//   final String text;
//   final Color color;
//   final IconData? icon;
//   final TextStyle textStyle;

//   const CustomButton2({
//     super.key,
//     required this.text,
//     required this.color,
//     this.icon,
//     required this.textStyle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(15),
//       child: Center(
//         child: Container(
//           height: 48,
//           width: 160,
//           decoration: BoxDecoration(
//             color: color, // Use the passed color
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(8),
//               child: Text(
//                 text, // Use the passed text
//                 style: textStyle, // Use the passed text style
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class CustomButton4 extends StatelessWidget {
  final String text;
  final Color color;
  final IconData? icon;
  final TextStyle textStyle;
  final double width; // Added width parameter
  final double height; // Added height parameter

  const CustomButton4({
    super.key,
    required this.text,
    required this.color,
    this.icon,
    required this.textStyle,
    this.width = 160, // Default width
    this.height = 48, // Default height
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Center(
        child: Container(
          height: height, // Use the passed height
          width: width, // Use the passed width
          decoration: BoxDecoration(
            color: color, // Use the passed color
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                text, // Use the passed text
                style: textStyle, // Use the passed text style
              ),
            ),
          ),
        ),
      ),
    );
  }
}














// class CustomizeButton extends StatelessWidget {
//   const CustomizeButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: padding15,
//       child: Center(
//         child: Container(
//           height: 35 ,
//           decoration: BoxDecoration(
//               color: const Color(0xFF6318AF),
//               borderRadius: BorderRadius.circular(8)),
//           child: Center(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: padding8,
//                   child: Text('Customize',
//                       style: customTextStyle(
//                           fontSize: 12,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w500)),
//                 ),
//                 const Icon(Icons.chevron_right,color: Colors.white,)        
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
