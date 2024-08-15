import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final dynamic profileData;

  const ProfilePage({super.key, this.profileData});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //VARIABLES

  //INIT STATE
  @override
  void initState() {
    super.initState();
    checkData();
  }

  //FUNCTION

  checkData() {
    print(widget.profileData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile Page'),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
