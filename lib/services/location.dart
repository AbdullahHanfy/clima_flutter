import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longtude;
  //Function to fit location of your device
  Future<void> getLocation() async {
    try {
      Position position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.bestForNavigation);
      latitude = position.latitude;
      longtude = position.longitude;
    } catch (e) {}
  }
}
