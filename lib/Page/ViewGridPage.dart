import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/Button.dart';
import '../gen/assets.gen.dart';
import '../widgets/Navigator.dart';
import '../widgets/Header.dart';


@RoutePage()
class ViewGridPage extends StatefulWidget {
  const ViewGridPage({super.key});

  @override
  State<ViewGridPage> createState() => _ViewGridPageState();
}

class _ViewGridPageState extends State<ViewGridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ViewGridHeader(),
          Expanded(
            child: ViewGrid(),
          ),
        ]
      ),
      bottomNavigationBar: MainBottomNavigationBar(
        selectedIndex : 1,
      ),
    );
  }
}

class ViewGrid extends StatefulWidget {
  const ViewGrid({super.key});

  @override
  State<ViewGrid> createState() => _ViewGridState();
}

class _ViewGridState extends State<ViewGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width : double.infinity,
      //color: Theme.of(context).colorScheme.primaryContainer,
      padding: EdgeInsets.only(
        top: 16.0,    // 위쪽 여백
        left: 13.0,   // 왼쪽 여백
        right: 13.0,  // 오른쪽 여백
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Button(buttonTitle: '게시판 1',topPadding: 15.0,leftPadding: 14.0,rightPadding: 14.0,bottomPadding: 14.0,Gap: 20.0,textboxWidth: 317,
            onPressed: (){}
          ),
          Button(buttonTitle: '게시판 2',topPadding: 15.0,leftPadding: 14.0,rightPadding: 14.0,bottomPadding: 14.0,Gap: 20.0,textboxWidth: 317,
            onPressed: (){}
          ),
        ],
      ),
    );
  }
}
