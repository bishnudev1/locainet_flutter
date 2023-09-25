import 'package:flutter/material.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.wifi_off,
                size: 100,
                color: Colors.white,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "No Internet Connection Found!\n Try Connecting to a Network and Restart the App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    fontFamily: "Inter",
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
