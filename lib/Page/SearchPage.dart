import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../gen/assets.gen.dart';
import '../widgets/Input.dart';
import '../widgets/Navigator.dart';
import '../widgets/Header.dart';
import '../widgets/NoticeThumbnail.dart';

@RoutePage()
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,left: 0,right: 0,
            child: HomeHeader(),
          ),
          Positioned(
            top:51+statusBarHeight,left: 0,right: 0,
            child : SearchItem(),
          ),
        ]
      ),
    );
  }
}

class SearchItem extends StatefulWidget {

  final String SearchText;
  const SearchItem({super.key,this.SearchText = ''});

  @override
  State<SearchItem> createState() => _SearchItemState();
}

class _SearchItemState extends State<SearchItem> {
  @override
  Widget build(BuildContext context) {

    final ItemCnt = 1;
    final detail;

    if(ItemCnt > 0){
      detail = Container(
        width : double.infinity,
        //color: Theme.of(context).colorScheme.primaryContainer,
        padding: EdgeInsets.only(
          top: 26.0,    // 위쪽 여백
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
    }else{
      detail = SizedBox(
        width: 402,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: Assets.icons.search.svg(
                width: 54,  // 👈 아이콘의 가로 크기
                height: 54, // 👈 아이콘의 세로 크기
                color: Color(0xFFB3B3B3),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 9,),
            Text(
              '검색 키워드를 입력해보세요',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,

              ),
            ),


          ],
        ),
      );
    }
    return detail;
  }
}