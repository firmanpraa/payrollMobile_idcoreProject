import 'package:dio/dio.dart';
import 'package:flutterapppayrollauth/core/models/auth_model.dart';
import 'package:flutterapppayrollauth/core/config/endpoint.dart';

class AuthServices {
  static Dio dio = new Dio();

  static Future<auth_model> login(Map loginData) async {
    //    iki fungsimu kek ono return kuduan dadi return null nek misale error koneksi
    var model;
    try{
      var response = await dio.post(
        Endpoint.login,
        data: FormData.fromMap(loginData),
        options: Options(headers: {"Accept" : "application/json"})
      );
      model = auth_model.fromJson(response.data, response.statusCode);
    }catch(e){
    //      dihapus ae error check e ndek view
    }
    return model;
  }
}
