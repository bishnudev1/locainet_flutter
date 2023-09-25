import 'package:flutter/material.dart';

class NoLocation extends StatelessWidget {
  const NoLocation({super.key});

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
                  "Location services are disabled! Could not step further.\n Restart the app and give location access",
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
