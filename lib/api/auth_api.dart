import 'api_client.dart';
import 'token_storage.dart';

class AuthApi {
  final dio = ApiClient().dio;

  // 로그인
  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await dio.post('/auth/login', data: {
      'email': email,
      'password': password,
    });

    // 토큰 자동 저장
    TokenStorage.accessToken = response.data['accessToken'];
    TokenStorage.refreshToken = response.data['refreshToken'];

    return response.data;
  }

  // 회원가입
  Future<Map<String, dynamic>> register(
    String email,
    String nickname,
    String password,
  ) async {
    final response = await dio.post('/auth/register', data: {
      'email': email,
      'nickname': nickname,
      'password': password,
    });
    return response.data;
  }

  // 토큰 갱신
  Future<Map<String, dynamic>> refresh() async {
    final response = await dio.post('/auth/refresh', data: {
      'refreshToken': TokenStorage.refreshToken,
    });

    // 새 토큰 저장
    TokenStorage.accessToken = response.data['accessToken'];
    TokenStorage.refreshToken = response.data['refreshToken'];

    return response.data;
  }
}
