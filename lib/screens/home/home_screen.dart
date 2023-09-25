import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Home Screen",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.5,
                fontFamily: "Inter",
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
