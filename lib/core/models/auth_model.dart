class auth_model {
  String nik;
  String password;
  String token;
  int codeRespon;

  auth_model({this.token, this.nik, this.password, this.codeRespon});

  auth_model.fromJson(Map<String, dynamic> json, int code) {
    token = json['token'];
    nik = json['nik'];
    password = json['password'];
    codeRespon = json['code'];
  
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['nik'] = this.nik;
    data['password'] = this.password;
    data['code'] = this.codeRespon;
    return data;
  }
}
