import 'package:geolocator/geolocator.dart';
import 'package:location_permissions/location_permissions.dart';

class Location {
  double lat, lng;

  Future<void> getLocation() async {
    PermissionStatus permissionStatus =
        await LocationPermissions().checkPermissionStatus();

    if (permissionStatus == PermissionStatus.granted) {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      lat = position.latitude;
      lng = position.longitude;
    } else {
      await LocationPermissions().requestPermissions();
      this.getLocation();
    }
  }
}
