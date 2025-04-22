class HomeRepository {
  Future<List<PostModel>> fetchPosts() async {
    await Future.delayed(Duration(seconds: 1));
    return [
      PostModel(
        id: '101',
        userId: '1',
        content: 'Olá pessoal, bem-vindos ao meu primeiro post!',
        imageUrl: 'https://placehold.it/300x200',
        likes: 12,
        comments: 4,
      ),
      PostModel(
        id: '102',
        userId: '2',
        content: 'Flutter torna o desenvolvimento muito produtivo.',
        imageUrl: '',
        likes: 25,
        comments: 6,
      ),
      PostModel(
        id: '103',
        userId: '3',
        content: 'MVC deixa meu código mais organizado!',
        imageUrl: 'https://placehold.it/400x250',
        likes: 30,
        comments: 8,
      )
    ];
  }
}