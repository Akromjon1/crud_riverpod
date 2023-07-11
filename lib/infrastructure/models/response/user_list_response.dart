import 'package:crud_riverpod/infrastructure/models/data/user_data.dart';


class UserListResponse {
  UserListResponse({List<UserData>? data}) {
    _data = data;
  }

  UserListResponse.fromJson(dynamic json) {
    if (json is List) {
      _data = json.map((v) => UserData.fromJson(v)).toList();
    }else{
      null;
    }
  }

  List<UserData>? _data;

  UserListResponse copyWith({List<UserData>? data}) =>
      UserListResponse(data: data ?? _data);

  List<UserData>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
