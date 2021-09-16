import 'package:flutter/material.dart';
import 'package:otp_verfication_assignment/Auth_service.dart';
import 'package:otp_verfication_assignment/main.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen();

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile Page'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('This is Your Profile Page'),
              TextButton(
                  onPressed: () async {
                    await authService.signOut();
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (builder) => MyApp()),
                        (route) => false);
                  },
                  child: Text('Log Out'))
            ],
          ),
        ));
  }
}
