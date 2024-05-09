// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(37.7833, -122.4167), // Replace with your desired location
    zoom: 11.0,
  );

  GoogleMapController? _mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Google Map'),
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
            },
          ),
          Positioned(
            left: 140,
            bottom: 10,
            child: FloatingActionButton(
              onPressed: () => Navigator.pop(context),
              child: Icon(Icons.close),
            ),
          ),
        ],
      ),
    );
  }
}
