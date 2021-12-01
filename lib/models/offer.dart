class Offer {
  String? guid;
  String? name;
  String? masterName;
  String? skillName;

  Offer(
      {this.guid,
      required this.name,
      required this.masterName,
      required this.skillName});

  factory Offer.fromJson(Map<String, dynamic> json) {
    return new Offer(
      guid: json['guid'],
      name: json['name'],
      masterName: json['masterName'],
      skillName: json['skillName'],
    );
  }
  Map<String, dynamic> toJsonForPost() {
    return {
      'guid': guid,
      'name': name,
      'masterName': masterName,
      'skillName': skillName
    };
  }
}
