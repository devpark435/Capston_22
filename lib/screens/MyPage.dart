import 'package:flutter/material.dart';
import '../asset/palette.dart';
import '../../widgets/customWidget.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key, required this.title});
  final String title;
  @override
  State<MyPage> createState() => _MyPage();
}

class _MyPage extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgColor,
      body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                color: Palette.bgColor,
              ),
              child: Text(
                "Stock Applicatio",
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  color: Palette.bgColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Palette.containerShadow,
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(25),
                ),
                alignment: AlignmentDirectional(0, 0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextField(
                          keyboardType: TextInputType.text,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Search...',
                          )),
                    ),
                    Icon(Icons.search)
                  ],
                ),
              ),
            )
          ]),
    );
  }
}
