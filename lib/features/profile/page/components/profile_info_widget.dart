import 'package:flutter/material.dart';

class ProfileInfoWidget extends StatelessWidget {
  final ProfileModel profile;

  const ProfileInfoWidget({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: NetworkImage(profile.avatarUrl),
        ),
        SizedBox(height: 16),
        Text(
          profile.name,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          profile.bio,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey.shade600),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _infoColumn(profile.postsCount.toString(), 'Posts'),
            _infoColumn(profile.followers.toString(), 'Seguidores'),
            _infoColumn(profile.following.toString(), 'Seguindo'),
          ],
        ),
      ],
    );
  }

  Widget _infoColumn(String value, String label) {
    return Column(
      children: [
        Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(label, style: TextStyle(color: Colors.grey.shade600)),
      ],
    );
  }
}