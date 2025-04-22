import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ProfilePage extends StatefulWidget {
  final ProfileController controller;
  final String userId;

  const ProfilePage({required this.controller, required this.userId});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    widget.controller.loadProfile(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil')),
      body: Observer(builder: (_) {
        if (widget.controller.loading || widget.controller.profile == null) {
          return Center(child: CircularProgressIndicator());
        }

        final profile = widget.controller.profile!;

        return SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          child: ProfileInfoWidget(profile: profile),
        );
      }),
    );
  }
}