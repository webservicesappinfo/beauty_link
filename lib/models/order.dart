class Order {
  String? guid;
  String? name;

  Order({this.guid, required this.name});

  factory Order.fromJson(Map<String, dynamic> json) {
    return new Order(
      guid: json['guid'],
      name: json['name'],
    );
  }
  Map<String, dynamic> toJsonForPost() {
    return {'guid': guid, 'name': name};
  }
}
