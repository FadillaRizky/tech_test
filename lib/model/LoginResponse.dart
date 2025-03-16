/// success : true
/// message : "Login successful"
/// data : {"id":309,"username":"demopm","auth_key":"RcJ03XtdyqBtwrWsCn-ar1ECYKr1F2C1","email":"demopm@gmail.com"}

class LoginResponse {
  LoginResponse({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  LoginResponse.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;
LoginResponse copyWith({  bool? success,
  String? message,
  Data? data,
}) => LoginResponse(  success: success ?? _success,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get success => _success;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : 309
/// username : "demopm"
/// auth_key : "RcJ03XtdyqBtwrWsCn-ar1ECYKr1F2C1"
/// email : "demopm@gmail.com"

class Data {
  Data({
      num? id, 
      String? username, 
      String? authKey, 
      String? email,}){
    _id = id;
    _username = username;
    _authKey = authKey;
    _email = email;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _authKey = json['auth_key'];
    _email = json['email'];
  }
  num? _id;
  String? _username;
  String? _authKey;
  String? _email;
Data copyWith({  num? id,
  String? username,
  String? authKey,
  String? email,
}) => Data(  id: id ?? _id,
  username: username ?? _username,
  authKey: authKey ?? _authKey,
  email: email ?? _email,
);
  num? get id => _id;
  String? get username => _username;
  String? get authKey => _authKey;
  String? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['auth_key'] = _authKey;
    map['email'] = _email;
    return map;
  }

}