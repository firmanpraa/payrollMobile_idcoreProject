class auth_model {
  String nik;
  String password;
  String token;
  String status;

  auth_model({this.token, this.nik, this.password, this.status});

  auth_model.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    nik = json['nik'];
    password = json['password'];
    status = json['status'];
  
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['nik'] = this.nik;
    data['password'] = this.password;
    data['status'] = this.status;
    return data;
  }
}
