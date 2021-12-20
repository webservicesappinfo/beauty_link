import 'package:beauty_link/models/entity_base.dart';

class Order extends EntityBase {
  String? guid;
  String? name;
  String userGuid;
  String userName;
  String masterGuid;
  String masterName;
  String skillGuid;
  String skillName;

  Order(
      {this.guid,
      required this.name,
      required this.masterGuid,
      required this.userName,
      required this.userGuid,
      required this.skillGuid,
      required this.masterName,
      required this.skillName});

  factory Order.fromJson(Map<String, dynamic> json) {
    return new Order(
      guid: json['guid'],
      name: json['name'],
      userName: json['userName'],
      masterName: json['masterName'],
      skillName: json['skillName'],
      userGuid: json['userGuid'],
      masterGuid: json['masterGuid'],
      skillGuid: json['skillGuid'],
    );
  }
  Map<String, dynamic> toJsonForPost() {
    return {'guid': guid, 'name': name, 'userName': userName, 'masterName': masterName, 'skillName': skillName};
  }

  @override
  String getCaption() => name ?? "NoName";
}
