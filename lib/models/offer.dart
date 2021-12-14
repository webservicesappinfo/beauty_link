import 'package:beauty_link/models/entity_base.dart';

class Offer extends EntityBase {
  String? guid;
  String? name;
  String? masterGuid;
  String? masterName;
  String? skillGuid;
  String? skillName;

  Offer(
      {this.guid,
      required this.name,
      required this.masterGuid,
      required this.masterName,
      required this.skillGuid,
      required this.skillName});

  factory Offer.fromJson(Map<String, dynamic> json) {
    return new Offer(
      guid: json['guid'],
      name: json['name'],
      masterGuid: json['masterGuid'],
      masterName: json['masterName'],
      skillName: json['skillName'],
      skillGuid: json['skillGuid'],
    );
  }
  Map<String, dynamic> toJsonForPost() {
    return {
      'guid': guid,
      'name': name,
      'masterGuid': masterGuid,
      'masterName': masterName,
      'skillGuid': skillGuid,
      'skillName': skillName,
    };
  }

  @override
  String getCaption() => name ?? "NoName";
}
