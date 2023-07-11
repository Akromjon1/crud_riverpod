class UserData {
  UserData({
    String? id,
    String? createdAt,
    String? name,
    String? avatar,

  }) {
    _id = id;
    _createdAt = createdAt;
    _name = name;
    _avatar = avatar;

  }

  UserData.fromJson(dynamic json) {
    _id = json['id'];
    _createdAt = json['createdAt'];
    _name = json['name'];
    _avatar = json['avatar'];
  }

  String? _id;
  String? _createdAt;
  String? _name;
  String? _avatar;


  UserData copyWith({
    String? id,
    String? createdAt,
    String? name,
    String? avatar,

  }) =>
      UserData(
        id: id ?? _id,
        createdAt: createdAt ?? _createdAt,
        name: name ?? _name,
        avatar: avatar ?? _avatar,

      );

  String? get id => _id;

  String? get createdAt => _createdAt;

  String? get name => _name;

  String? get avatar => _avatar;



  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['createdAt'] = _createdAt;
    map['name'] = _name;
    map['avatar'] = _avatar;

    return map;
  }
}
