class ProfileModel {
  final String id;
  final String name;
  final String bio;
  final String photoUrl;
  int followers;
  int following;

  ProfileModel({required this.id, required this.name, required this.bio, required this.photoUrl, this.followers = 0, this.following = 0});

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id: json['id'],
        name: json['name'],
        bio: json['bio'],
        photoUrl: json['photoUrl'],
        followers: json['followers'],
        following: json['following'],
      );
}