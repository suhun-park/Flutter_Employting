class MyUserModel {
  String? nickName;
  String? dept;
  String? email;
  String? id;
  String? uid;

  MyUserModel({
    required this.nickName,
    required this.dept,
    required this.email,
    required this.id,
    required this.uid,
  });

  MyUserModel.fromJson(Map<String, dynamic> json) {
    dept = json['dept'];
    nickName = json['nickName'];
    email = json['email'];
    id = json['id'];
    uid = json['uid'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    dept = data['dept'];
    nickName = data['nickName'];
    email = data['email'];
    id = data['id'];
    uid = data['uid'];

    return data;
  }
}
