import 'package:flutter/material.dart';
import '../asset/palette.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({super.key, required this.title});
  final String title;
  @override
  State<ChartPage> createState() => _ChartPage();
}

class _ChartPage extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.bgColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Palette.containerShadow),
          backgroundColor: Palette.containerColor,
          centerTitle: false,
          elevation: 0,
          actions: [],
        ),
        body: SafeArea(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    // ItmeNameContainer
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
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    //ChartContainer
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.4,
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
                    child: Column(children: [
                      Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                      Container()
                    ]))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
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
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
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
                )
              ],
            ),
          ]),
        ));
  }
}
