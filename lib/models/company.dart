class Company {
  String? guid;
  String? name;
  String? ownerGuid;

  Company({this.guid, required this.name, this.ownerGuid});

  factory Company.fromJson(Map<String, dynamic> json) {
    return new Company(
      guid: json['guid'],
      name: json['name'],
      ownerGuid: json['ownerGuid'],
    );
  }
  Map<String, dynamic> toJsonForPost() {
    return {
      'guid': this.guid,
      'name': this.name,
      'userGuid': this.ownerGuid,
    };
  }
}
