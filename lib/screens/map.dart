import 'package:courierui/components/mapComponents/containerData.dart';
import 'package:courierui/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import "package:latlong2/latlong.dart" as latLng;

class MapSection extends StatefulWidget {
  const MapSection({Key? key}) : super(key: key);

  @override
  _MapSectionState createState() => _MapSectionState();
}

class _MapSectionState extends State<MapSection> {
  GlobalKey<ScaffoldState> _scafoldKey = GlobalKey<ScaffoldState>();

  List<latLng.LatLng> points = [
    latLng.LatLng(22.331117, 91.842301),
    latLng.LatLng(22.321117, 91.862301),
    latLng.LatLng(22.341117, 91.832301),
    latLng.LatLng(22.351117, 91.822301),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldKey,
      drawer: Drawer(
        child: CustomDrawer(),
      ),
      body: MaterialApp(
        home: Stack(
          fit: StackFit.loose,
          children: [
            Container(
              height: 530,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                // color: lightPurple,
              ),
              child: FlutterMap(
                options: MapOptions(
                  center: latLng.LatLng(22.331117, 91.842301),
                  // LatLng(22.331117,91.842301)
                  zoom: 13.0,
                ),
                layers: [
                  TileLayerOptions(
                      urlTemplate:
                          "https://api.mapbox.com/styles/v1/defendercharli/cktffl7uu38j017p7cxqz769j/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZGVmZW5kZXJjaGFybGkiLCJhIjoiY2t0ZmYxbGl0MDdobTJwcW41c3FpejduMCJ9.g2Bpuitqhxwu2O6ot46ooA",
                      additionalOptions: {
                        'accessToken':
                            'pk.eyJ1IjoiZGVmZW5kZXJjaGFybGkiLCJhIjoiY2t0ZmYxbGl0MDdobTJwcW41c3FpejduMCJ9.g2Bpuitqhxwu2O6ot46ooA',
                        'id': 'mapbox.mapbox-streets-v8'
                      }),
                  PolylineLayerOptions(polylines: [
                    Polyline(
                        points: points, strokeWidth: 5.0, color: Colors.red)
                  ])
                ],
              ),
            ),
            Positioned(
              top: 500,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                // height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: ContainerData(),
              ),
            ),
            Positioned(
              top: 80,
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  setState(() => _scafoldKey.currentState!.openDrawer());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
