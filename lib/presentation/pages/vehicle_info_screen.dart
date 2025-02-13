import 'package:flutter/material.dart';
import 'package:toyota/presentation/custom_widgets/custom_layout.dart';
import 'package:toyota/utils/app_properties.dart';

class VehicleInfoScreen extends StatelessWidget {
  final String title;
  const VehicleInfoScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return CustomLayout(appBarTitle: title, bodyWidget: _body());
  }

  Widget _body() {
    return Card(
      child: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            const Row(
              children: [
                Text("MY VEHICLE",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w800)),
              ],
            ),
            Column(
              children: <Widget>[
                ...ListTile.divideTiles(
                  color: Colors.white,
                  tiles: [
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      leading: Icon(
                        Icons.list,
                        color: AppProperties.darkSlateGrey,
                      ),
                      title: const Text("REGISTRATION",
                          style:
                              TextStyle(fontSize: 12, color: Colors.black87)),
                      subtitle: const Text("REGO123",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.directions_car,
                        color: AppProperties.darkSlateGrey,
                      ),
                      title: const Text("VEHICLE",
                          style:
                              TextStyle(fontSize: 12, color: Colors.black87)),
                      subtitle: const Text("2016 Toyota COROLLA",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_pin,
                        color: AppProperties.darkSlateGrey,
                      ),
                      title: const Text("LOCATION",
                          style:
                              TextStyle(fontSize: 12, color: Colors.black87)),
                      subtitle: const Text("Unknown",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.speed,
                        color: AppProperties.darkSlateGrey,
                      ),
                      title: const Text("LATEST ODOMETER READING",
                          style:
                              TextStyle(fontSize: 12, color: Colors.black87)),
                      subtitle: const Text("42155",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                  ],
                ),
              ],
            ),
            const Row(
              children: [
                Text("SERVICE HISTORY",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w800)),
              ],
            ),
            Column(
              children: <Widget>[
                ...ListTile.divideTiles(
                  color: Colors.white,
                  tiles: [
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      leading: Icon(
                        Icons.calendar_month_rounded,
                        color: AppProperties.darkSlateGrey,
                      ),
                      title: const Text("LAST SERVICE DATE",
                          style:
                              TextStyle(fontSize: 12, color: Colors.black87)),
                      subtitle: const Text("22/05/2020",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: AppProperties.darkSlateGrey,
                      ),
                      title: const Text("SERVICE ODOMETER",
                          style:
                              TextStyle(fontSize: 12, color: Colors.black87)),
                      subtitle: const Text("35987",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                  ],
                ),
              ],
            ),
            const Row(
              children: [
                Text("MY DETAILS",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w800)),
              ],
            ),
            Column(
              children: <Widget>[
                ...ListTile.divideTiles(
                  color: Colors.white,
                  tiles: [
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      leading: Icon(
                        Icons.person,
                        color: AppProperties.darkSlateGrey,
                      ),
                      title: const Text("DRIVER",
                          style:
                              TextStyle(fontSize: 12, color: Colors.black87)),
                      subtitle: const Text("Demodriver",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.notifications,
                        color: AppProperties.darkSlateGrey,
                      ),
                      title: const Text("NOTIFICATION METHOD",
                          style:
                              TextStyle(fontSize: 12, color: Colors.black87)),
                      subtitle: const Text("N/A",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.email,
                        color: AppProperties.darkSlateGrey,
                      ),
                      title: const Text("EMAIL",
                          style:
                              TextStyle(fontSize: 12, color: Colors.black87)),
                      subtitle: const Text("user@gmail.com",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: AppProperties.darkSlateGrey,
                      ),
                      title: const Text("MOBILE",
                          style:
                              TextStyle(fontSize: 12, color: Colors.black87)),
                      subtitle: const Text("7339008415",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
