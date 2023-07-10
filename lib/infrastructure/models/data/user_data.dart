class UserData {
  UserData({
    String? id,
    String? createdDate,
    String? name,
    String? avatar,

  }) {
    _id = id;
    _createdDate = createdDate;
    _name = name;
    _avatar = avatar;

  }

  UserData.fromJson(dynamic json) {
    _id = json['id'];
    _createdDate = json['createdDate'];
    _name = json['name'];
    _avatar = json['avatar'];
  }

  String? _id;
  String? _createdDate;
  String? _name;
  String? _avatar;


  UserData copyWith({
    String? id,
    String? createdDate,
    String? name,
    String? avatar,

  }) =>
      UserData(
        id: id ?? _id,
        createdDate: createdDate ?? _createdDate,
        name: name ?? _name,
        avatar: avatar ?? _avatar,

      );

  String? get id => _id;

  String? get createdDate => _createdDate;

  String? get name => _name;

  String? get avatar => _avatar;



  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['createdDate'] = _createdDate;
    map['name'] = _name;
    map['avatar'] = _avatar;

    return map;
  }
}
