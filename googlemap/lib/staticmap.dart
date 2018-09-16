import 'dart:async';

import 'package:map_view/map_view.dart';
import 'package:flutter/material.dart';

/// map_view/StaticMapProvider provides an unstable static map view.
/// The purpose of this class is to create a stable static map view.
/// This class does not modify nor override any of the map_view/StaticMapProvider class feature.
class StaticMap extends StaticMapProvider {
  StaticMap(String googleMapsApiKey) : super(googleMapsApiKey);

  static const int defaultZoomLevel = 12;
  static const int defaultWidth = 600;
  static const int defaultHeight = 400;
  static const Color defaultColor = Colors.red;

  /// [urlWithMarkers] method create a static map view with marker url as [String]
  /// [id] marker id as String
  /// [Location] static map view's location
  /// [zoomLevel] zoom in/out
  /// [width] [height] size of the map
  /// [color] color of the marker
  String urlWithMarkers(String id, Location center, int zoomLevel, int width,
      int height, Color color) {
    String header = "https://maps.googleapis.com/maps/api/staticmap?center=";
    String position = "${center.latitude}%2c${center.longitude}";
    //zoom, size, color
    String zsc =
        "&zoom=${zoomLevel ?? defaultZoomLevel}&size=${width ?? defaultWidth}x${height ?? defaultHeight}&markers=color:${color ?? defaultColor}";
    String marker =
        "%7Clabel:$id%7C${center.latitude},${center.longitude}&$googleMapsApiKey";

    return "$header$position$zsc$marker";
  }

  ///
  /// Creates a Uri for the Google Static Maps API using an active MapView
  /// This method is useful for generating a static image
  /// [mapView] must currently be visible when you call this.
  ///
  Future<String> getImageUrlFromMap(MapView mapView) async {
    var center = await mapView.centerLocation;
    var zoom = await mapView.zoomLevel;
    String url = urlWithMarkers("1", center, zoom.toInt(), defaultWidth, defaultHeight, Colors.red);
    return url;
  }
}
