import 'package:json_annotation/json_annotation.dart';
part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  final String id;
  final String userId;
  final String content;
  final String imageUrl;
  final int likes;
  final int comments;

  PostModel({
    required this.id,
    required this.userId,
    required this.content,
    required this.imageUrl,
    required this.likes,
    required this.comments,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);
  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}