import 'package:flutter/material.dart';
import 'package:maps_demo/src/mapdemo/geocoding_screen.dart';
import 'package:maps_demo/src/mapdemo/geoflutterfire_screen.dart';
import 'package:maps_demo/src/mapdemo/geolocation_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        controller: controller,
        thumbVisibility: true,
        thickness: 16,
        child: PageView(
          controller: controller,
          children: const [
            GeolocationScreen(),
            GeocodingScreen(),
            GeoFlutterFireScreen()
          ],
        ),
      ),
    );
  }
}
