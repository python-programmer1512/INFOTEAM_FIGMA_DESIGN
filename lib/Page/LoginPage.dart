import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../gen/assets.gen.dart';
import '../widgets/Input.dart';
import '../widgets/Navigator.dart';
import '../widgets/Header.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SigninupHeader(inorup: '로그인',),
          Expanded(
            child: Login(),
          ),
        ]
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  

  @override
  void dispose() {
    _emailController.dispose();  // 메모리 해제
    _passwordController.dispose();  // 메모리 해제
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
          InputBox(InputBoxText: '이메일',controller: _emailController,),
          SizedBox(height: 20,),
          InputBox(InputBoxText: '비밀번호',controller: _passwordController,),
        ],
      ),
    );
  }
}
