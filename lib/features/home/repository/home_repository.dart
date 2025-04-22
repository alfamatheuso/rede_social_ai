class HomeRepository {
  final mockService = MockService();

  Future<List<PostModel>> fetchPosts() async {
    final data = await mockService.getMockData('posts.json');
    return data.map((json) => PostModel.fromJson(json)).toList();
  }
}