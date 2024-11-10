// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously, prefer_const_constructors

import 'package:btg_identifier/features/authentication/presentation/pages/home_Screen.dart';
import 'package:flutter/material.dart';


// ignore: use_key_in_widget_constructors
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _loading = false;
      });
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _loading
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/camera1.png', width: 100, height: 100),
                  SizedBox(height: 16),
                  Text('Loading...', style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              )
            : Container(),
      ),
    );
  }
}