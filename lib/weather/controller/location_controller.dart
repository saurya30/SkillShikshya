import 'package:geolocator/geolocator.dart';

class LocationController {
  static Future<Position> determinePosition() async {
    bool isServiceEnabled = false;

    isServiceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!isServiceEnabled) {
      print("Service is disabled");
      return Future.error("Service is disabled");
    }

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        print('Permission denied');
        return Future.error('Permission denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      print("Denied Forever, cannot get location data");
      return Future.error('Denied Denied Forever, cannot get location data');
    }

    Position position = await Geolocator.getCurrentPosition(
      locationSettings: LocationSettings(accuracy: LocationAccuracy.medium),
    );

    return position;
  }
}
