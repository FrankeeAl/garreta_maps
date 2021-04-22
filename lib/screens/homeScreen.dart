import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:garreta_google_maps/blocs/application_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final applicationBloc = Provider.of<ApplicationBloc>(context);

    return Scaffold(
      body: (applicationBloc.currentLocation == null)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  TextField(
                    decoration:
                        InputDecoration(hintText: 'Search your address'),
                  ),
                  Expanded(
                    child: GoogleMap(
                      mapType: MapType.normal,
                      myLocationButtonEnabled: true,
                      initialCameraPosition: CameraPosition(
                        target: LatLng(applicationBloc.currentLocation.latitude,
                            applicationBloc.currentLocation.longitude),
                        zoom: 17,
                        tilt: 45,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
