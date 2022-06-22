/// Defines the api endpoint for the App
class ApiEndpoint {
  ApiEndpoint._();

  static const String baseUrl = 'http://domain/api/';
  static const String userSocket = 'wss://api.domain.com/platform/user/';

  static String getUserDetail(int userId) {
    return 'user/$userId/';
  }
}
