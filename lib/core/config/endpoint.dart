class Endpoint {
  static String _baseURL =
      'http://maxzon.zapto.org:8000/api';
  static String login = '$_baseURL/auth/login';
  static String user = '$_baseURL/employee/employee-information';
  static String logout = '$_baseURL/auth/logout';
}
