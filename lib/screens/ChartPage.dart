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
    );
  }
}
