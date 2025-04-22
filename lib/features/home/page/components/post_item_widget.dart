import 'package:flutter/material.dart';

class PostItemWidget extends StatelessWidget {
  final PostModel post;
  const PostItemWidget({required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.content, style: TextStyle(fontSize: 16)),
            if (post.imageUrl.isNotEmpty) ...[
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(post.imageUrl),
              ),
            ],
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Icon(Icons.thumb_up, size: 18),
                  SizedBox(width: 4),
                  Text('${post.likes}'),
                ]),
                Row(children: [
                  Icon(Icons.comment, size: 18),
                  SizedBox(width: 4),
                  Text('${post.comments}'),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}