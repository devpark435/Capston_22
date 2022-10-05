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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                color: Palette.bgColor,
              ),
              child: Text(
                "Stock Application",
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
