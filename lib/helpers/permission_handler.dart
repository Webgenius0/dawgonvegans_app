/* import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationService {
  static Position? currentPosition;

  static Future<void> requestPermissions() async {
    // Check the current status of permissions
    var statuses = await [
      Permission.location,
      Permission.photos,
    ].request();

    // Check if all permissions are granted
    if (statuses[Permission.location]?.isGranted == true &&
        statuses[Permission.photos]?.isGranted == true) {
      const LocationSettings locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 100,
      );

      currentPosition = await Geolocator.getCurrentPosition(
          locationSettings: locationSettings);
    } else {
      // Handle denied permissions
      openAppSettings();
    }
  }
}
 */
