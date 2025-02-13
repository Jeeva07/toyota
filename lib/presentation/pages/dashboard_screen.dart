import 'package:flutter/material.dart';
import 'package:toyota/presentation/custom_widgets/custom_layout.dart';
import 'package:toyota/utils/app_properties.dart';

class DashboardScreen extends StatelessWidget {
  final String title;
  const DashboardScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      appBarTitle: title,
      bodyWidget: _body(),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("MY DASHBOARD",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800)),
              Text("BOOK A RELIEF VEHICLE >",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w800)),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                  color: AppProperties.darkSlateGrey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildCircularIndicator(
                        "WOF Expiry", 51, "BOOK INSPECTION"),
                    _buildCircularIndicator(
                        "Est. Service Due", 50, "BOOK A SERVICE"),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCard("My Information",
                  "Ensure your details are up to date.", "UPDATE"),
              _buildCard(
                  "Driver Resources",
                  "Fleet guides to help you make informed decisions.",
                  "MY DRIVER GUIDES"),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCard("End of Lease", "Take the hassle out of lease end.",
                  "LEASE END"),
              _buildCard("Incident Tracking",
                  "Avoid surprises by keeping track of incidents.", "TRACKING"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCircularIndicator(String label, int days, String btnText) {
    return Column(
      children: [
        Row(
          children: [
            Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 8),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: CircularProgressIndicator(
                value: days / 100,
                backgroundColor: Colors.white,
                color: Colors.orange,
                strokeWidth: 6,
              ),
            ),
            Text("$days days"),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              width: 100,
            ),
            Icon(
              Icons.info_outline_rounded,
              color: AppProperties.lightSeaGreen,
            ),
          ],
        ),
        const SizedBox(height: 8),
        OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 10, color: AppProperties.textGrey),
                    borderRadius: BorderRadius.circular(5))),
            child: Text(
              btnText,
              style: TextStyle(color: AppProperties.textGrey),
            ))
      ],
    );
  }

  Widget _buildCard(String title, String description, String buttonText) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              color: AppProperties.darkSlateGrey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: AppProperties.darkSlateGrey,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Center(
                  child: Text(title,
                      style: TextStyle(
                          color: AppProperties.textWhite, fontSize: 16)),
                ),
              ),
              const SizedBox(height: 40),
              Text(description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade700)),
              if (buttonText.isNotEmpty) ...[
                const SizedBox(height: 20),
                OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 10, color: AppProperties.textGrey),
                            borderRadius: BorderRadius.circular(5))),
                    child: Text(
                      buttonText,
                      style: TextStyle(color: AppProperties.textGrey),
                    ))
              ],
            ],
          ),
        ),
      ),
    );
  }
}
