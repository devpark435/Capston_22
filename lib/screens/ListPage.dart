import 'package:flutter/material.dart';
import '../../widgets/customWidget.dart';
import 'package:flutter/material.dart';
import '../asset/palette.dart';
import '../screens/ChartPage.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key, required this.title});
  final String title;

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    //MARK: DefaultTabController
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //MARK: Custom AppBar
        appBar: AppBar(
          title: const Text(
            'Stock Application',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Palette.containerColor,
          centerTitle: false,
          elevation: 0,
          //MARK: bottom in tabBar
          bottom: TabBar(
            indicatorColor: Palette.containerShadow,
            isScrollable: true,
            indicatorWeight: 3,
            tabs: <Widget>[
              Tab(
                child: Text("Ctg1"),
              ),
              Tab(child: Text("Ctg2")),
              Tab(child: Text("Ctg3")),
            ],
          ),
        ),
        backgroundColor: Palette.bgColor,
        body:
            //MARK: TabBarView
            TabBarView(
          children: <Widget>[
            //MARK: Using Class ListContainer
            Tab(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: GestureDetector(
                        child: ListBox(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Tab(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: GestureDetector(
                        //   onTap: () {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) =>
                        //                 ChartPage(title: 'ChartPage')));
                        //   },
                        child: ListBox(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
