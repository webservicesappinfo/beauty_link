class Offer {
  String? guid;
  String? name;

  Offer({this.guid, required this.name});

  factory Offer.fromJson(Map<String, dynamic> json) {
    return new Offer(
      guid: json['guid'],
      name: json['name'],
    );
  }
  Map<String, dynamic> toJsonForPost() {
    return {'guid': guid, 'name': name};
  }
}
