import 'package:dio/dio.dart';
import 'package:flutterapppayrollauth/core/models/auth_model.dart';
import 'package:flutterapppayrollauth/core/config/endpoint.dart';
import 'package:flutterapppayrollauth/core/utils/toast_utils.dart';

class AuthServices {
  static Dio dio = new Dio();

  static Future<auth_model> login(Map loginData) async {
<<<<<<< HEAD
    var model;
    try {
      var response = await dio.post(Endpoint.login,
          data: FormData.fromMap(loginData),
          options: Options(headers: {"Accept": "application/json"}));
      model = auth_model.fromJson(response.data, response.statusCode);
    } catch (e) {}
=======
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
>>>>>>> ec6c7691433b412cebc8f763bbd75059bf2cd833
    return model;
  }
}
