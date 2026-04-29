import 'package:figma_design/Page/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../gen/assets.gen.dart';
import '../widgets/Navigator.dart';
import '../widgets/Header.dart';
import '../widgets/NoticeThumbnail.dart';
import 'ViewGridPage.dart';
import 'LoginPage.dart';
import 'SignUpPage.dart';




@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomeHeader(),
          Expanded(
            child: HomeWidget(),
          ),
        ]
      ),
      bottomNavigationBar:MainBottomNavigationBar(
        selectedIndex : 0,
      )
    );
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width : double.infinity,
      //color: Theme.of(context).colorScheme.primaryContainer,
      padding: EdgeInsets.only(
        top: 16.0,    // 위쪽 여백
        left: 18.0,   // 왼쪽 여백
        right: 18.0,  // 오른쪽 여백
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NoticeThumbnail(noticeTitle: '게시글 제목',noticeDetail: '공지 내용',ImageExist: false,),
          NoticeThumbnail(noticeTitle: '게시글 제목2',noticeDetail: '공지 내용2',ImageExist: false,),
          NoticeThumbnail(noticeTitle: '게시글 제목3',noticeDetail: '공지 내용3',ImageExist: true,),
        ],
      ),
    );
  }
}

