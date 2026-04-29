import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../gen/assets.gen.dart';
import '../widgets/Input.dart';
import '../widgets/Navigator.dart';
import '../widgets/Header.dart';

@RoutePage()
class NewboardPage extends StatefulWidget {
  const NewboardPage({super.key});

  @override
  State<NewboardPage> createState() => _NewboardPageState();
}

class _NewboardPageState extends State<NewboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NewboardCreateHeader(),
          Expanded(
            child: Newboard(),
          ),
        ]
      ),
    );
  }
}

class Newboard extends StatefulWidget {
  const Newboard({super.key});

  @override
  State<Newboard> createState() => _NewboardState();
}

class _NewboardState extends State<Newboard> {
  final TextEditingController boardnamecontroller = TextEditingController();
  

  @override
  void dispose() {
    boardnamecontroller.dispose();  // 메모리 해제
    super.dispose();
  }

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
          InputBox(InputBoxText: '게시판 이름',controller: boardnamecontroller,),
        ],
      ),
    );
  }
}