/// success : true
/// message : "Data berhasil ditampikan"
/// data : {"total_pembayaran":"2.000.000","perbulan":"1.000.000"}

class DashboardResponse {
  DashboardResponse({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  DashboardResponse.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;
DashboardResponse copyWith({  bool? success,
  String? message,
  Data? data,
}) => DashboardResponse(  success: success ?? _success,
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

/// total_pembayaran : "2.000.000"
/// perbulan : "1.000.000"

class Data {
  Data({
      String? totalPembayaran, 
      String? perbulan,}){
    _totalPembayaran = totalPembayaran;
    _perbulan = perbulan;
}

  Data.fromJson(dynamic json) {
    _totalPembayaran = json['total_pembayaran'];
    _perbulan = json['perbulan'];
  }
  String? _totalPembayaran;
  String? _perbulan;
Data copyWith({  String? totalPembayaran,
  String? perbulan,
}) => Data(  totalPembayaran: totalPembayaran ?? _totalPembayaran,
  perbulan: perbulan ?? _perbulan,
);
  String? get totalPembayaran => _totalPembayaran;
  String? get perbulan => _perbulan;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_pembayaran'] = _totalPembayaran;
    map['perbulan'] = _perbulan;
    return map;
  }

}