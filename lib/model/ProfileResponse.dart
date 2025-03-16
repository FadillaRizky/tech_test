/// success : true
/// message : "Detail pengguna berhasil ditampilkan"
/// data : {"user":{"id":309,"username":"demopm","auth_key":"jLA8E2qEpCWZom3p2Ckon0q10Dd3P2yF","password_hash":"$2y$13$XFY978dyyKKML2e.AePTD.jhj/7aiVzj3Uco1iRIGCUqmumzP.tKO","password_reset_token":null,"email":"demopm@gmail.com","status":10,"created_at":1741848909,"updated_at":1741849889,"created_by":297,"updated_by":null,"lastlogin":1741849889,"id_person":857},"profile":null,"person":{"id":857,"name":"TITO SUMARSONO","is_company":false,"tax_reg":"1220020202","detail_person":"{\"dob\": \"\", \"fax\": \"\", \"sex\": \"\", \"phone\": \"\", \"id_type\": \"\", \"position\": \"\", \"religion\": \"\", \"id_number\": \"\", \"salutation\": \"\", \"nationality\": \"\", \"contact_name\": \"\", \"id_type_comp\": \"\", \"id_number_comp\": \"\", \"marital_status\": \"\"}","person_code":"DMOO00000004","wl_person":0,"created_at":1658460618,"created_by":34,"updated_at":1658460618,"updated_by":null,"employee":" "},"url_image":null}

class ProfileResponse {
  ProfileResponse({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  ProfileResponse.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;
ProfileResponse copyWith({  bool? success,
  String? message,
  Data? data,
}) => ProfileResponse(  success: success ?? _success,
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

/// user : {"id":309,"username":"demopm","auth_key":"jLA8E2qEpCWZom3p2Ckon0q10Dd3P2yF","password_hash":"$2y$13$XFY978dyyKKML2e.AePTD.jhj/7aiVzj3Uco1iRIGCUqmumzP.tKO","password_reset_token":null,"email":"demopm@gmail.com","status":10,"created_at":1741848909,"updated_at":1741849889,"created_by":297,"updated_by":null,"lastlogin":1741849889,"id_person":857}
/// profile : null
/// person : {"id":857,"name":"TITO SUMARSONO","is_company":false,"tax_reg":"1220020202","detail_person":"{\"dob\": \"\", \"fax\": \"\", \"sex\": \"\", \"phone\": \"\", \"id_type\": \"\", \"position\": \"\", \"religion\": \"\", \"id_number\": \"\", \"salutation\": \"\", \"nationality\": \"\", \"contact_name\": \"\", \"id_type_comp\": \"\", \"id_number_comp\": \"\", \"marital_status\": \"\"}","person_code":"DMOO00000004","wl_person":0,"created_at":1658460618,"created_by":34,"updated_at":1658460618,"updated_by":null,"employee":" "}
/// url_image : null

class Data {
  Data({
      User? user, 
      dynamic profile, 
      Person? person, 
      dynamic urlImage,}){
    _user = user;
    _profile = profile;
    _person = person;
    _urlImage = urlImage;
}

  Data.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _profile = json['profile'];
    _person = json['person'] != null ? Person.fromJson(json['person']) : null;
    _urlImage = json['url_image'];
  }
  User? _user;
  dynamic _profile;
  Person? _person;
  dynamic _urlImage;
Data copyWith({  User? user,
  dynamic profile,
  Person? person,
  dynamic urlImage,
}) => Data(  user: user ?? _user,
  profile: profile ?? _profile,
  person: person ?? _person,
  urlImage: urlImage ?? _urlImage,
);
  User? get user => _user;
  dynamic get profile => _profile;
  Person? get person => _person;
  dynamic get urlImage => _urlImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['profile'] = _profile;
    if (_person != null) {
      map['person'] = _person?.toJson();
    }
    map['url_image'] = _urlImage;
    return map;
  }

}

/// id : 857
/// name : "TITO SUMARSONO"
/// is_company : false
/// tax_reg : "1220020202"
/// detail_person : "{\"dob\": \"\", \"fax\": \"\", \"sex\": \"\", \"phone\": \"\", \"id_type\": \"\", \"position\": \"\", \"religion\": \"\", \"id_number\": \"\", \"salutation\": \"\", \"nationality\": \"\", \"contact_name\": \"\", \"id_type_comp\": \"\", \"id_number_comp\": \"\", \"marital_status\": \"\"}"
/// person_code : "DMOO00000004"
/// wl_person : 0
/// created_at : 1658460618
/// created_by : 34
/// updated_at : 1658460618
/// updated_by : null
/// employee : " "

class Person {
  Person({
      num? id, 
      String? name, 
      bool? isCompany, 
      String? taxReg, 
      String? detailPerson, 
      String? personCode, 
      num? wlPerson, 
      num? createdAt, 
      num? createdBy, 
      num? updatedAt, 
      dynamic updatedBy, 
      String? employee,}){
    _id = id;
    _name = name;
    _isCompany = isCompany;
    _taxReg = taxReg;
    _detailPerson = detailPerson;
    _personCode = personCode;
    _wlPerson = wlPerson;
    _createdAt = createdAt;
    _createdBy = createdBy;
    _updatedAt = updatedAt;
    _updatedBy = updatedBy;
    _employee = employee;
}

  Person.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _isCompany = json['is_company'];
    _taxReg = json['tax_reg'];
    _detailPerson = json['detail_person'];
    _personCode = json['person_code'];
    _wlPerson = json['wl_person'];
    _createdAt = json['created_at'];
    _createdBy = json['created_by'];
    _updatedAt = json['updated_at'];
    _updatedBy = json['updated_by'];
    _employee = json['employee'];
  }
  num? _id;
  String? _name;
  bool? _isCompany;
  String? _taxReg;
  String? _detailPerson;
  String? _personCode;
  num? _wlPerson;
  num? _createdAt;
  num? _createdBy;
  num? _updatedAt;
  dynamic _updatedBy;
  String? _employee;
Person copyWith({  num? id,
  String? name,
  bool? isCompany,
  String? taxReg,
  String? detailPerson,
  String? personCode,
  num? wlPerson,
  num? createdAt,
  num? createdBy,
  num? updatedAt,
  dynamic updatedBy,
  String? employee,
}) => Person(  id: id ?? _id,
  name: name ?? _name,
  isCompany: isCompany ?? _isCompany,
  taxReg: taxReg ?? _taxReg,
  detailPerson: detailPerson ?? _detailPerson,
  personCode: personCode ?? _personCode,
  wlPerson: wlPerson ?? _wlPerson,
  createdAt: createdAt ?? _createdAt,
  createdBy: createdBy ?? _createdBy,
  updatedAt: updatedAt ?? _updatedAt,
  updatedBy: updatedBy ?? _updatedBy,
  employee: employee ?? _employee,
);
  num? get id => _id;
  String? get name => _name;
  bool? get isCompany => _isCompany;
  String? get taxReg => _taxReg;
  String? get detailPerson => _detailPerson;
  String? get personCode => _personCode;
  num? get wlPerson => _wlPerson;
  num? get createdAt => _createdAt;
  num? get createdBy => _createdBy;
  num? get updatedAt => _updatedAt;
  dynamic get updatedBy => _updatedBy;
  String? get employee => _employee;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['is_company'] = _isCompany;
    map['tax_reg'] = _taxReg;
    map['detail_person'] = _detailPerson;
    map['person_code'] = _personCode;
    map['wl_person'] = _wlPerson;
    map['created_at'] = _createdAt;
    map['created_by'] = _createdBy;
    map['updated_at'] = _updatedAt;
    map['updated_by'] = _updatedBy;
    map['employee'] = _employee;
    return map;
  }

}

/// id : 309
/// username : "demopm"
/// auth_key : "jLA8E2qEpCWZom3p2Ckon0q10Dd3P2yF"
/// password_hash : "$2y$13$XFY978dyyKKML2e.AePTD.jhj/7aiVzj3Uco1iRIGCUqmumzP.tKO"
/// password_reset_token : null
/// email : "demopm@gmail.com"
/// status : 10
/// created_at : 1741848909
/// updated_at : 1741849889
/// created_by : 297
/// updated_by : null
/// lastlogin : 1741849889
/// id_person : 857

class User {
  User({
      num? id, 
      String? username, 
      String? authKey, 
      String? passwordHash, 
      dynamic passwordResetToken, 
      String? email, 
      num? status, 
      num? createdAt, 
      num? updatedAt, 
      num? createdBy, 
      dynamic updatedBy, 
      num? lastlogin, 
      num? idPerson,}){
    _id = id;
    _username = username;
    _authKey = authKey;
    _passwordHash = passwordHash;
    _passwordResetToken = passwordResetToken;
    _email = email;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _lastlogin = lastlogin;
    _idPerson = idPerson;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _authKey = json['auth_key'];
    _passwordHash = json['password_hash'];
    _passwordResetToken = json['password_reset_token'];
    _email = json['email'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
    _lastlogin = json['lastlogin'];
    _idPerson = json['id_person'];
  }
  num? _id;
  String? _username;
  String? _authKey;
  String? _passwordHash;
  dynamic _passwordResetToken;
  String? _email;
  num? _status;
  num? _createdAt;
  num? _updatedAt;
  num? _createdBy;
  dynamic _updatedBy;
  num? _lastlogin;
  num? _idPerson;
User copyWith({  num? id,
  String? username,
  String? authKey,
  String? passwordHash,
  dynamic passwordResetToken,
  String? email,
  num? status,
  num? createdAt,
  num? updatedAt,
  num? createdBy,
  dynamic updatedBy,
  num? lastlogin,
  num? idPerson,
}) => User(  id: id ?? _id,
  username: username ?? _username,
  authKey: authKey ?? _authKey,
  passwordHash: passwordHash ?? _passwordHash,
  passwordResetToken: passwordResetToken ?? _passwordResetToken,
  email: email ?? _email,
  status: status ?? _status,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  createdBy: createdBy ?? _createdBy,
  updatedBy: updatedBy ?? _updatedBy,
  lastlogin: lastlogin ?? _lastlogin,
  idPerson: idPerson ?? _idPerson,
);
  num? get id => _id;
  String? get username => _username;
  String? get authKey => _authKey;
  String? get passwordHash => _passwordHash;
  dynamic get passwordResetToken => _passwordResetToken;
  String? get email => _email;
  num? get status => _status;
  num? get createdAt => _createdAt;
  num? get updatedAt => _updatedAt;
  num? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;
  num? get lastlogin => _lastlogin;
  num? get idPerson => _idPerson;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['auth_key'] = _authKey;
    map['password_hash'] = _passwordHash;
    map['password_reset_token'] = _passwordResetToken;
    map['email'] = _email;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    map['lastlogin'] = _lastlogin;
    map['id_person'] = _idPerson;
    return map;
  }

}