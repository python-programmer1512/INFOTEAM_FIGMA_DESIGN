import 'package:figma_design/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/Button.dart';
import '../gen/assets.gen.dart';
import '../widgets/Navigator.dart';
import '../widgets/Header.dart';



@RoutePage()
class ProfilePage extends StatefulWidget {
  final bool islogin;

  const ProfilePage({super.key,required this.islogin});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomeHeader(),
          Expanded(
            child: Profile(islogin: widget.islogin,),
          ),
        ]
      ),
      bottomNavigationBar:MainBottomNavigationBar(
        selectedIndex : 2,
      )
    );
  }
}

class Profile extends StatefulWidget {
  final bool islogin;

  const Profile({super.key, required this.islogin});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Widget loginTF;

    switch(widget.islogin){
      case true:
        loginTF = IsLogin();
      case false:
        loginTF = IsNotLogin();
      default:
        throw UnimplementedError('no widget for  islogin');
    }

    return Container(
      width : double.infinity,
      //color: Theme.of(context).colorScheme.primaryContainer,
      padding: EdgeInsets.only(
        top: 16.0,    // 위쪽 여백
        left: 18.0,   // 왼쪽 여백
        right: 18.0,  // 오른쪽 여백
      ),
      child:loginTF,
    );
  }
}


class IsLogin extends StatelessWidget {
  
  const IsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Text(
            '닉네임',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Color(0xFF727272),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              'infoteam',
              textAlign : TextAlign.right,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          )
        ],
        ),
        SizedBox(height: 8,),
        Row(children: [
          Text(
            '이메일',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Color(0xFF727272),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              'joseph0528@gistory.me',
              textAlign : TextAlign.right,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          )
        ],),
      ],

    );
  }
}

class IsNotLogin extends StatelessWidget {

  const IsNotLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Button(buttonTitle: '로그인',topPadding: 15.0,leftPadding: 14.0,rightPadding: 14.0,bottomPadding : 14.0, Gap: 18.0,textboxWidth: 306,
          onPressed: () => context.router.push(LoginRoute()),
        ),
        Button(buttonTitle: '회원가입',topPadding: 15.0,leftPadding: 14.0,rightPadding: 14.0,bottomPadding : 14.0, Gap: 18.0,textboxWidth: 306,
          onPressed: () => context.router.push(SignUpRoute()),
        ),
      ],
    );
  }
}