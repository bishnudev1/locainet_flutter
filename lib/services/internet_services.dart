import 'dart:developer';

import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:locainet_flutter/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class InternetServices with ListenableServiceMixin {
  final _navigationService = locator<NavigationService>();

  InternetServices() {
    InternetConnectionChecker().onStatusChange.listen((status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          log('Data connection is available.');
          _navigationService.replaceWith(Routes.homeScreen);
          break;
        case InternetConnectionStatus.disconnected:
          log('You are disconnected from the internet.');
          _navigationService.replaceWith(Routes.noInternet);
          break;
      }
    });
  }

  checkInternet() async {
    final connectivityResult =
        await InternetConnectionChecker().connectionStatus;

    if (connectivityResult == InternetConnectionStatus.disconnected) {
      _navigationService.replaceWith(Routes.noInternet);
    }
  }
}
