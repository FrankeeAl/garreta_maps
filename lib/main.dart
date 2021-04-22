import 'package:flutter/material.dart';
import 'package:garreta_google_maps/screens/homeScreen.dart';
import 'package:garreta_google_maps/screens/mapScreen.dart';
import 'package:provider/provider.dart';
import 'blocs/application_bloc.dart';
import 'blocs/bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderMaps(),
      child: MaterialApp(
        title: 'Local Map',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MapsScreen(),
        // home: HomeScreen(),
      ),
    );
  }
}
