import 'dart:async';

import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/pages/for_test/fit_offer_info/fit_offer_info_page.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OffersMapPage extends StatefulWidget {
  List<Offer> offers = [];
  AppUser client;
  OffersMapPage({Key? key, required this.client, required this.offers}) : super(key: key);

  @override
  _OffersMapPageState createState() => _OffersMapPageState();
}

class _OffersMapPageState extends State<OffersMapPage> {
  Completer<GoogleMapController> _controller = Completer();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  int _markerIdCounter = 0;

  static CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  void initState() {
    for (var offer in widget.offers) _addMarker(offer);
    super.initState();
  }

  void _addMarker(Offer offer) {
    var location = offer.location;
    if (location == null) return;
    if (markers.length == 12) return;

    final String markerIdVal = 'marker_id_$_markerIdCounter';
    _markerIdCounter++;
    final MarkerId markerId = MarkerId(markerIdVal);

    final Marker marker = Marker(
      markerId: markerId,
      position: location,
      infoWindow: InfoWindow(
          title: offer.name,
          snippet: "Company: ${offer.companyName}",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FitOfferInfoPage(
                  offer: offer,
                  client: widget.client,
                ),
              ),
            );
          }),
      onTap: () {
        //_onMarkerTapped(markerId);
      },
      onDragEnd: (LatLng position) {
        //_onMarkerDragEnd(markerId, position);
      },
    );
    markers[markerId] = marker;
    _kGooglePlex = CameraPosition(
      target: location,
      zoom: 14.4746,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: Set<Marker>.of(markers.values)),
      /*floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,*/
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller..animateCamera(CameraUpdate.newCameraPosition(_kLake));
    setState(() {});
  }
}
