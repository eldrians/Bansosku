import 'dart:async';

import 'package:bansosku/common/header_tag.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsScreen extends StatefulWidget {
  const MapsScreen({super.key});

  @override
  State<MapsScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  late BitmapDescriptor destinationIcon;
  final Set<Marker> _markers = <Marker>{};

  LatLng? currentLocation;

  @override
  void initState() {
    super.initState();
    setUserLocation();
    setSourceAndDestinationMarkerIcons();
  }

  void setUserLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      currentLocation = LatLng(position.latitude, position.longitude);
    });
  }

  void setSourceAndDestinationMarkerIcons() {
    destinationIcon = BitmapDescriptor.defaultMarker;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          currentLocation == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Positioned.fill(
                  child: GoogleMap(
                    zoomControlsEnabled: false,
                    compassEnabled: false,
                    tiltGesturesEnabled: false,
                    markers: _markers,
                    mapType: MapType.normal,
                    initialCameraPosition: CameraPosition(
                      zoom: 16,
                      target: currentLocation!,
                    ),
                    onMapCreated: (GoogleMapController controller) async {
                      _controller.complete(controller);
                      showPinsOnMap();
                    },
                  ),
                ),
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                HeaderTag(tagName: 'jual'),
                HeaderTag(tagName: 'beli'),
                HeaderTag(tagName: 'darurat'),
                HeaderTag(tagName: 'bantuan'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            backgroundColor: MyColors.primaryBg,
            onPressed: () {},
            child: const Icon(
              Icons.location_on_outlined,
              size: 36,
              color: MyColors.primaryGreen,
            ),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: "btn2",
            backgroundColor: MyColors.primaryGreen,
            onPressed: () {},
            child: const Icon(
              Icons.directions,
              size: 36,
            ),
          ),
        ],
      ),
    );
  }

  void showPinsOnMap() {
    setState(() {
      _markers.add(Marker(
        markerId: const MarkerId("Rumah Mu"),
        position: LatLng(
          currentLocation!.latitude,
          currentLocation!.longitude,
        ),
        icon: destinationIcon,
        onTap: () {},
      ));
    });
  }
}
