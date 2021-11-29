class Skill {
  String? guid;
  String? name;
  String? desc;

  Skill({this.guid, required this.name, this.desc});

  factory Skill.fromJson(Map<String, dynamic> json) {
    return new Skill(
      guid: json['guid'],
      name: json['name'],
      desc: json['desc'],
    );
  }
  Map<String, dynamic> toJsonForPost() {
    return {'guid': guid, 'name': name, 'desc': desc};
  }
}
