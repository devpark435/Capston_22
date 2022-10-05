import 'package:flutter/material.dart';
import '../asset/palette.dart';
import '../screens/ChartPage.dart';

class ListBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Palette.containerColor,
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                  blurRadius: 0,
                  offset: Offset(0, 5),
                  color: Palette.containerShadow)
            ]),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ChartPage(title: 'ChartPage')));
          },
        ));
  }
}

// abstract class BtNav extends StatefulWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.business),
//           label: 'Business',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.school),
//           label: 'School',
//         ),
//       ],
//     );
//   }
// }
