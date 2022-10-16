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
                          width: 300,
                          'data:image/png;base64,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'),
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
                          width: 50,
                          'data:image/png;base64,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'),
                      Text('kakao'),
                      Text('0.2%'),
                    ],
                  )),
            ]));
  }
}
