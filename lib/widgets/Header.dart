import 'package:flutter/material.dart';
import 'package:figma_design/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../gen/assets.gen.dart';
import 'Search.dart';
import 'Edit.dart';
import 'BackArrowButton.dart';


class ViewGridHeader extends StatelessWidget {
  
  const ViewGridHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        width: 402,
        height: 56,
        padding: EdgeInsets.fromLTRB(20,8,20,8),
        child: Row(
          children: [
            Container(
              width: 330,
              height: 32,
              margin: EdgeInsets.fromLTRB(0,4,0,4),
              child: Text(
                '나의 게시판 앱',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  height: 1.47,
                  
                ),
              ),
            ),
            SizedBox(width: 8,),
            SizedBox(
              width: 24,
              height: 24,
              child : IconButton(
                constraints: BoxConstraints.tightFor(width: 24, height: 24),
                padding: EdgeInsets.zero,
                icon: Assets.icons.newBoard.svg(
                  width: 24,  // 👈 아이콘의 가로 크기
                  height: 24, // 👈 아이콘의 세로 크기
                  fit: BoxFit.contain,
                ),
                onPressed: (){
                  //onTap();
                  context.router.push(NewboardRoute());
                  print("new board 버튼 클릭");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {

  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        width: 402,
        height: 56,
        padding: EdgeInsets.fromLTRB(20,8,20,8),
        child: Row(
          children: [
            Container(
              width: 290,
              height: 32,
              margin: EdgeInsets.fromLTRB(0,4,0,4),
              child: Text(
                '나의 게시판 앱',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  height: 1.47,
                  
                ),
              ),
            ),
            SizedBox(width: 8,),
            Container(
              width: 64,
              height: 24,
              child: Row(
                children: [
                  Search(),
                  SizedBox(
                    width: 16,
                    height: 24,
                  ),
                  Edit(),
                ],
                //24,16,24
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SigninupHeader extends StatelessWidget {

  final inorup;

  const SigninupHeader({super.key,required this.inorup});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        width: 402,
        height: 56,
        padding: EdgeInsets.fromLTRB(20,8,20,8),
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  width: 298,
                  height: 32,
                  margin: EdgeInsets.fromLTRB(0,4,0,4),
                  child: Row(
                    children: [
                      BackArrowButton(opacity: 0,),
                      Expanded(child: SizedBox())
                    ],
                  )
                ),
                Container(
                  width: 64,
                  height: 24,
                  child: Row(
                    children: [
                      Search(),
                      SizedBox(
                        width: 16,
                        height: 24,
                      ),
                      Edit(),
                    ],
                    //24,16,24
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 258,
                height: 32,
                
                child: Container(
                  width:77,
                  height: 32,
                  alignment: Alignment.center,
                  child: Text(
                    inorup,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      height: 1.47,
                      
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NewboardCreateHeader extends StatelessWidget {

  const NewboardCreateHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        width: 402,
        height: 56,
        padding: EdgeInsets.fromLTRB(20,8,20,8),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 327,
                    margin: EdgeInsets.fromLTRB(0,4,0,4),
                    child: Row(
                      children: [
                        BackArrowButton(opacity: 1,),
                        Expanded(child: SizedBox())
                      ],
                    )
                  ),
                  SizedBox(
                    width: 35,
                    height: 29,
                    child: GestureDetector(
                      onTap: (){
                        print("완료 버튼 누름");
                      },
                      child : Text(
                        '완료',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          height: 1.47,
                          
                        ),
                      ),
                    )
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 258,
                
                child: Container(
                  width:77,
                  height: 32,
                  alignment: Alignment.center,
                  child: Text(
                    '게시판 만들기',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      height: 1.47,
                      
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

