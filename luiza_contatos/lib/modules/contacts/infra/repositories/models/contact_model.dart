class ContactModel {
  final int index;
  final String picture;
  final int age;
  final String name;
  final String email;

  ContactModel({
    required this.index,
    required this.picture,
    required this.age,
    required this.name,
    required this.email,
  });

  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      index: json['index'],
      picture: json['picture'],
      age: json['age'],
      name: json['name'],
      email: json['email'],
    );
  }
}
