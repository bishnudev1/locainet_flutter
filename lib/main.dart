import 'package:flutter/material.dart';
import 'package:locainet_flutter/app/app.locator.dart';
import 'package:locainet_flutter/app/app.router.dart';
import 'package:locainet_flutter/services/internet_services.dart';
import 'package:locainet_flutter/services/location_services.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    locator<InternetServices>();
    locator<LocationServices>();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "LocalInet",
        theme: ThemeData(
            colorSchemeSeed: Colors.pink,
            scaffoldBackgroundColor: Colors.black),
        debugShowCheckedModeBanner: false,
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        initialRoute: Routes.homeScreen);
  }
}
