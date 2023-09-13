// Package imports:
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

// Project imports:
import 'package:default_project/core/helpers/permission_helper.dart';

class MyLocationHelper {
  //
  static Future<LatLng> getLocation() async {
    final isGranted =
        await MyPermissionHelper.request(Permission.locationWhenInUse);

    if (!isGranted!) {
      throw Exception('Permission denied, please allow it on settings');
    }

    final position = await Geolocator.getCurrentPosition();
    final latLang = LatLng(position.latitude, position.longitude);
    return latLang;
  }
}
