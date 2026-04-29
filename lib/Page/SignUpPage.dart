import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../gen/assets.gen.dart';
import '../widgets/Input.dart';
import '../widgets/Header.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SigninupHeader(inorup: '회원가입',),
          Expanded(
            child: Signup(),
          ),
        ]
      ),
    );
  }
}


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nicknameController = TextEditingController();
  

  @override
  void dispose() {
    _emailController.dispose();  // 메모리 해제
    _passwordController.dispose();  // 메모리 해제
    _nicknameController.dispose();
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
          InputBox(InputBoxText: '닉네임',controller: _nicknameController,),
          SizedBox(height: 20,),
          InputBox(InputBoxText: '이메일',controller: _emailController,),
          SizedBox(height: 20,),
          InputBox(InputBoxText: '비밀번호',controller: _passwordController,),
        ],
      ),
    );
  }
}