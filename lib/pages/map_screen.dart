import 'package:flutter/material.dart';
import 'package:weather_app/widget/appbar.dart';
import 'package:weather_app/widget/drawer.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        drawer: const MenuDrawer(),
        appBar: const BaseAppBar(),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.freeiconspng.com%2Fuploads%2Fworld-map-png-5.png&f=1&nofb=1"),
            alignment: Alignment.bottomCenter,
          )),
        ));
  }
}
