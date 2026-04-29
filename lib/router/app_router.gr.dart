// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:figma_design/Page/HomePage.dart' as _i2;
import 'package:figma_design/Page/LoginPage.dart' as _i1;
import 'package:figma_design/Page/NewboardPage.dart' as _i3;
import 'package:figma_design/Page/ProfilePage.dart' as _i4;
import 'package:figma_design/Page/SearchPage.dart' as _i5;
import 'package:figma_design/Page/SignUpPage.dart' as _i6;
import 'package:figma_design/Page/ViewGridPage.dart' as _i7;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.LoginPage();
    },
  );
}

/// generated route for
/// [_i2.MyHomePage]
class MyHomeRoute extends _i8.PageRouteInfo<void> {
  const MyHomeRoute({List<_i8.PageRouteInfo>? children})
    : super(MyHomeRoute.name, initialChildren: children);

  static const String name = 'MyHomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.MyHomePage();
    },
  );
}

/// generated route for
/// [_i3.NewboardPage]
class NewboardRoute extends _i8.PageRouteInfo<void> {
  const NewboardRoute({List<_i8.PageRouteInfo>? children})
    : super(NewboardRoute.name, initialChildren: children);

  static const String name = 'NewboardRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.NewboardPage();
    },
  );
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i9.Key? key,
    required bool islogin,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         ProfileRoute.name,
         args: ProfileRouteArgs(key: key, islogin: islogin),
         initialChildren: children,
       );

  static const String name = 'ProfileRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileRouteArgs>();
      return _i4.ProfilePage(key: args.key, islogin: args.islogin);
    },
  );
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key, required this.islogin});

  final _i9.Key? key;

  final bool islogin;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, islogin: $islogin}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProfileRouteArgs) return false;
    return key == other.key && islogin == other.islogin;
  }

  @override
  int get hashCode => key.hashCode ^ islogin.hashCode;
}

/// generated route for
/// [_i5.SearchPage]
class SearchRoute extends _i8.PageRouteInfo<void> {
  const SearchRoute({List<_i8.PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.SearchPage();
    },
  );
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute({List<_i8.PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.SignUpPage();
    },
  );
}

/// generated route for
/// [_i7.ViewGridPage]
class ViewGridRoute extends _i8.PageRouteInfo<void> {
  const ViewGridRoute({List<_i8.PageRouteInfo>? children})
    : super(ViewGridRoute.name, initialChildren: children);

  static const String name = 'ViewGridRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.ViewGridPage();
    },
  );
}
