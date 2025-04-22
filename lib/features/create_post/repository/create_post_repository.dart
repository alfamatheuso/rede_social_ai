class CreatePostRepository {
  final mockService = MockService();

  Future<bool> createPost(PostModel post) async {
    await Future.delayed(Duration(seconds: 2));
    return true;
  }
}