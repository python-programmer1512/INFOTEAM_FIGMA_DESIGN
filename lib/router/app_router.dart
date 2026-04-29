import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart'; // 코드가 생성된 후 생성될 파일
import '../Page/HomePage.dart';
import '../Page/ProfilePage.dart';
import '../Page/ViewGridPage.dart';
import '../Page/NewboardPage.dart';
import '../Page/SearchPage.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    // '/'는 초기 화면을 의미합니다.
    AutoRoute(page: MyHomeRoute.page, path: '/', initial: true),
    AutoRoute(page: ProfileRoute.page, path: '/profile'),
    AutoRoute(page: ViewGridRoute.page, path: '/view-grid'),
    AutoRoute(page: NewboardRoute.page, path: '/create-new-board'),
    AutoRoute(page: LoginRoute.page, path: '/login'),
    AutoRoute(page: SignUpRoute.page, path: '/signup'),
    AutoRoute(page: SearchRoute.page, path: '/search'),
  ];
}