import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../gen/assets.gen.dart';



class Edit extends StatelessWidget {
  const Edit({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: IconButton(
        constraints: BoxConstraints.tightFor(width: 24, height: 24),
        padding: EdgeInsets.zero,
        icon: Assets.icons.review.svg(
          width: 18,  // 👈 아이콘의 가로 크기
          height: 18, // 👈 아이콘의 세로 크기
        ),
        onPressed: (){
          print("edit 버튼 클릭");
        },
      ),
    );
  }
}