import 'package:json_annotation/json_annotation.dart';
part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  final String userId;
  final String name;
  final String avatarUrl;
  final String bio;
  final int postsCount;
  final int followers;
  final int following;

  ProfileModel({
    required this.userId,
    required this.name,
    required this.avatarUrl,
    required this.bio,
    required this.postsCount,
    required this.followers,
    required this.following,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}