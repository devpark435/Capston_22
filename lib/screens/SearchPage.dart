import 'package:flutter/material.dart';
import 'package:stock_flutter_app/widgets/customWidget.dart';
import '../asset/palette.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key, required this.title});
  final String title;
  @override
  State<SearchPage> createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.bgColor,
        body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black12, width: 3)),
                  child: Text('Investment Game', textAlign: TextAlign.center)),
              Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black12, width: 3)),
                  child: Row(
                    children: [
                      Image.asset(
                        'profile.jpg',
                        width: 100,
                      ),
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
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black12, width: 3)),
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
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black12, width: 3)),
                  child: Row(
                    children: [
                      Image.asset(
                        'kakao.jpg',
                        width: 50,
                      ),
                      Text('kakao'),
                      Text('0.2%'),
                    ],
                  )),
            ]));
  }
}
