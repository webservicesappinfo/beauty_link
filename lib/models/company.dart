class Company {
  String? name;
  String? userGuid;

  Company({this.name, this.userGuid});

  factory Company.fromJson(Map<String, dynamic> json) {
    return new Company(
      name: json['name'],
      userGuid: json['userGuid'],
    );
  }
  Map<String, dynamic> toJsonForPost() {
    return {
      'name': this.name,
      'userGuid': this.userGuid,
    };
  }
}
