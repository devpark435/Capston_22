import 'dart:ffi';
import 'ChartPage.dart';
import 'ListPage.dart';
import 'package:flutter/material.dart';
import 'package:stock_flutter_app/widgets/customWidget.dart';
import '../asset/palette.dart';
import 'signUpPage.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key, required this.title});
  final String title;
  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.bgColor,
        body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Palette.bgColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Palette.containerColor,
                        offset: Offset(0, 5),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text('Investment Game', textAlign: TextAlign.center)),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Palette.bgColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Palette.containerColor,
                        offset: Offset(0, 5),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Image.network(
                          width: 300, 'https://picsum.photos/250?image=9'),
                      Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('name:'),
                          Text('Email:'),
                        ],
                      ))
                    ],
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Palette.bgColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Palette.containerColor,
                        offset: Offset(0, 5),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.bar_chart),
                      Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ready money:'),
                          Text('Total assets:'),
                          Text('Profit:'),
                        ],
                      )),
                      Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('100,000원'),
                          Text('100,000원'),
                          Text('0.2%'),
                        ],
                      ))
                    ],
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Palette.bgColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Palette.containerColor,
                        offset: Offset(0, 5),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Image.network(
                          width: 50, 'https://picsum.photos/250?image=9'),
                      Text('kakao'),
                      Text('0.2%'),
                    ],
                  )),
            ]));
    return Scaffold();
  }
}
