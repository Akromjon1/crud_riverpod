
import '../data/user_data.dart';

class UserResponse {
  UserResponse({UserData? data}) {
    _data = data;
  }

  UserResponse.fromJson(dynamic json) {
    _data = json['data'] != null ? UserData.fromJson(json['data']) : null;
  }

  UserData? _data;

  UserResponse copyWith({UserData? data}) =>
      UserResponse(data: data ?? _data);

  UserData? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}
