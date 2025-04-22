class PostModel {
  final String id;
  final String userId;
  final String content;
  final String imageUrl;
  int likes;
  int comments;

  PostModel({required this.id, required this.userId, required this.content, required this.imageUrl, this.likes = 0, this.comments = 0});

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        id: json['id'],
        userId: json['userId'],
        content: json['content'],
        imageUrl: json['imageUrl'],
        likes: json['likes'],
        comments: json['comments'],
      );
}