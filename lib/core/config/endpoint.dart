class Endpoint {
  static String _baseURL =
      'http://transinfo.dishub.pasuruankab.go.id/public/rollapi';
  static String login = '${_baseURL}/auth/login';
  static String user = '${_baseURL}/employee/employee-information';
  static String logout = '${_baseURL}/auth/logout';
}
