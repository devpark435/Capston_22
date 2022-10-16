import 'package:flutter/material.dart';
import '../asset/palette.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({super.key, required this.title});
  final String title;
  @override
  State<ChartPage> createState() => _ChartPage();
}

class _ChartPage extends State<ChartPage> {
  String Buying = '';
  String selling = ' ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("InvestmentGame"),
                        IconButton(
                          icon: const Icon(Icons.attach_money),
                          color: Palette.moneyColor,
                          onPressed: () {
                            showDialog(
                                context: context,
                                barrierDismissible: true,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    alignment: Alignment.center,
                                    title: Text("매수"),
                                    backgroundColor: Palette.containerColor,
                                    content: SingleChildScrollView(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextField(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                            },
                                            onChanged: (text) {
                                              setState(() {
                                                Buying = text;
                                              });
                                            },
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              labelText: '몇 주를 매수하시겠습니까?',
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                          Text(Buying + "주를 매수합니다.")
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.money_off_csred),
                          color: Palette.moneyOffColor,
                          onPressed: () {
                            showDialog(
                                context: context,
                                barrierDismissible: true,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    alignment: Alignment.center,
                                    title: Text("매도"),
                                    backgroundColor: Palette.containerColor,
                                    content: SingleChildScrollView(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextField(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                            },
                                            onChanged: (text) {
                                              setState(() {
                                                selling = text;
                                              });
                                            },
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              labelText: '몇 주를 매도하시겠습니까?',
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                          Text(selling + "주를 매도합니다."),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                        )
                      ],
                    ))
              ],
            ),
          ]),
        ));
  }
}
