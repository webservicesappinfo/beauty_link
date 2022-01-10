import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const _initLocation = LatLng(-33.852, 151.211);
const CameraPosition _kInitialPosition = CameraPosition(target: _initLocation, zoom: 11.0);

class MapPickerPage extends StatefulWidget {
  MapPickerPage({Key? key}) : super(key: key);

  @override
  _MapPickerPageState createState() => _MapPickerPageState();
}

class _MapPickerPageState extends State<MapPickerPage> {
  GoogleMapController? mapController;
  LatLng? _lastTap;
  Marker marker = Marker(
    markerId: MarkerId("marker_id_0"),
    position: _initLocation,
    infoWindow: InfoWindow(title: '0', snippet: '*'),
  );

  @override
  Widget build(BuildContext context) {
    final GoogleMap googleMap = GoogleMap(
      onMapCreated: onMapCreated,
      initialCameraPosition: _kInitialPosition,
      onTap: (LatLng pos) {
        setState(() {
          _lastTap = pos;
          marker = Marker(
            markerId: MarkerId("marker_id_0"),
            position: _lastTap ?? _initLocation,
            infoWindow: InfoWindow(title: '0', snippet: '*'),
          );
        });
      },
      markers: Set<Marker>.of([marker]),
    );

    final List<Widget> columnChildren = <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SizedBox(
            width: 300.0,
            height: 350.0,
            child: googleMap,
          ),
        ),
      ),
    ];

    if (mapController != null) {
      final String lastTap = 'Location:\n${_lastTap ?? ""}\n';
      columnChildren.add(Center(
          child: Text(
        lastTap,
        textAlign: TextAlign.center,
      )));
      columnChildren.add(Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, [_lastTap]);
              },
              child: Text("Save location"))));
    }
    return Scaffold(
      appBar: AppBar(title: Text('map')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: columnChildren,
      ),
    );
  }

  void onMapCreated(GoogleMapController controller) async {
    setState(() {
      mapController = controller;
    });
  }
}
