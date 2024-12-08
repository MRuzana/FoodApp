import 'package:flutter/material.dart';
import 'package:food_app/views/widgets/appbar_customize_screen.dart';
import 'package:food_app/views/widgets/bottom_section.dart';
import 'package:food_app/views/widgets/customize_screen_left_section.dart';
import 'package:food_app/views/widgets/item_details.dart';

class CustomizeScreen extends StatelessWidget {
  const CustomizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double leftWidth = MediaQuery.of(context).size.width * 0.26;
    final double rightWidth = MediaQuery.of(context).size.width - leftWidth;
    final double height =  MediaQuery.of(context).size.height * 0.75;
  
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65 ), // Adjust height as needed
        child: appBarCustomizeScreen(context),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(width: 1, color: Color(0xFFE4E6E7))),
          ),
          child: Column(
            children: [
              // Row with left and right sections
              Row(
                children: [
                  // Left section 
                  Container(
                    width: leftWidth,
                    height: height, 
                    color: Colors.white,
                    child: const LeftListView(),
                  ),

                  // Right section 
                  Container(
                    width: rightWidth,
                    height: height, 
                    color: Colors.white,
                   child: const ItemDetails(),
                  ),
                ],
              ),
              // Bottom section 
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  
                  child: const BottomSection()
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}











































// class CustomizeScreen extends StatelessWidget {
//   const CustomizeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {

//     final double marginLeft = MediaQuery.of(context).size.width * 0.26;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(80), // Adjust height as needed
//         child: appBar(context),
//       ),
//       body: SafeArea(
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: const BoxDecoration(
//             border: Border(top: BorderSide(width: 1,color: Color(0xFFE4E6E7)))
//           ),
//         child: Column(
//           children: [
//             Row(
//               children: [
               
//                // left section
            
//                 Container(
//                   width: marginLeft,
//                   decoration: const BoxDecoration(
//                     color: Colors.red,
//                     border: Border(right: BorderSide(width: 1,color: Color(0xFFE4E6E7)))
//                   ),
//                 ),
            
//                 //Right section 
//                 const ItemDetails(),
                
//               ],
//             ),
//             Container(
//               height: 76,
//               color: Colors.yellow,
//             )
//           ],
//         ),
//       )),

      
//     );
//   }
// }























