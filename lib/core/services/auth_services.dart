import 'package:dio/dio.dart';
import 'package:flutterapppayrollauth/core/models/auth_model.dart';
import 'package:flutterapppayrollauth/core/config/endpoint.dart';
import 'package:flutterapppayrollauth/core/utils/toast_utils.dart';
class AuthServices {
  static Dio dio = new Dio();

  static Future<auth_model> login(Map loginData) async {
    try{
      var response = await dio.post(
        Endpoint.login,
        data: FormData.fromMap(loginData),
        options: Options(headers: {"Accept" : "application/json"})
      );
      return auth_model.fromJson(response.data);

    }catch(e){
      print ("ERROR: " + e.toString());
      ToastUtils.show("Please check your connection");

    }
  }
}
