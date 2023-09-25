import 'package:geolocator/geolocator.dart';
import 'package:locainet_flutter/app/app.locator.dart';
import 'package:locainet_flutter/app/app.router.dart';
import 'package:locainet_flutter/utils/toast.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LocationServices with ListenableServiceMixin {
  LocationServices() {
    _determinePosition();
  }

  final _navigationService = locator<NavigationService>();

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      showToast("Enable Locaton Services...");
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        _navigationService.replaceWith(Routes.noInternet);
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      _navigationService.replaceWith(Routes.noInternet);
    }
  }
}
