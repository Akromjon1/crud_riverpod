import 'user_response.dart';

class UserListResponse {
  UserListResponse({List<UserResponse>? data}) {
    _data = data;
  }

  UserListResponse.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(UserResponse.fromJson(v));
      });
    }
  }

  List<UserResponse>? _data;

  UserListResponse copyWith({List<UserResponse>? data}) =>
      UserListResponse(data: data ?? _data);

  List<UserResponse>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
