class auth_model {
  String nik;
  String password;
  String token;
  int codeRespon;

  auth_model({this.token, this.nik, this.password});

  auth_model.fromJson(Map<String, dynamic> json, int code) {
    token = json['token'];
    nik = json['nik'];
    password = json['password'];
<<<<<<< HEAD
=======
    // yaopo kih kok rung digenti gk usah json
>>>>>>> ec6c7691433b412cebc8f763bbd75059bf2cd833
    codeRespon = code;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['nik'] = this.nik;
    data['password'] = this.password;
    return data;
  }
}
