import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../screens/home/home_screen.dart';
import '../screens/no internet/no_internet.dart';
import '../screens/no location/no_location.dart';
import '../services/internet_services.dart';
import '../services/location_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: HomeScreen),
  MaterialRoute(page: NoInternet),
  MaterialRoute(page: NoLocation),
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: InternetServices),
  LazySingleton(classType: LocationServices),
])
class AppSetup {}
