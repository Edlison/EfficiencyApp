import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _index = 0;
  List<Widget> _pages;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.blue,
            focusColor: Colors.blue[700],
            onPressed: () {},
            tooltip: '新任务',
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.list),
                  onPressed: () {
                    setState(() {
                    _index =0;
                });
                  },
                  tooltip: '任务列表',
                ),

                SizedBox(), //中间位置空出

                IconButton(
                  icon: Icon(Icons.person),
                  tooltip: '个人主页',
                  onPressed: () {
                    setState(() {
                    _index =1;
                });
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
            ),
          )),
    );
  }
}
