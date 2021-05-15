class UserData {
  UserData({required this.name, required this.email, this.imgUrl});
  final String name, email;
  final String? imgUrl;

  factory UserData.fromMap(Map<String, dynamic>? data, String documentId) {
    if (data == null) {
      throw StateError('missing data for $documentId');
    }
    final String name = data['name'];
    final String email = data['email'];
    final String? imgUrl = data['imgUrl'];
    return UserData(
      name: name,
      email: email,
      imgUrl: imgUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'imgUrl': imgUrl,
    };
  }

  @override
  String toString() => '<UserData> name: $name, email: $email, imgUrl: $imgUrl';
}
