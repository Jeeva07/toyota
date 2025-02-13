import 'package:flutter/material.dart';
import 'package:toyota/presentation/custom_widgets/custom_layout.dart';
import 'package:toyota/utils/app_properties.dart';

class OdometerScreen extends StatelessWidget {
  final String title;
  const OdometerScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return CustomLayout(appBarTitle: title, bodyWidget: _body());
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.speed, size: 28),
              SizedBox(width: 8),
              Text("Odometer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 8),
          const Text("Enter your vehicle odometer reading."),
          const SizedBox(height: 20),
          const Text("REGISTRATION",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey)),
          const SizedBox(height: 4),
          const Text("REGO123", style: TextStyle(fontSize: 16)),
          const SizedBox(height: 16),
          const Text("VEHICLE",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey)),
          const SizedBox(height: 4),
          const Text("2016 Toyota COROLLA", style: TextStyle(fontSize: 16)),
          const SizedBox(height: 16),
          const Text("ODOMETER",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey)),
          const SizedBox(height: 4),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: null,
            style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: AppProperties.darkSlateGrey.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: AppProperties.textGrey),
                    borderRadius: BorderRadius.circular(5))),
            child: const Text("SAVE", style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: AppProperties.textGrey),
                    borderRadius: BorderRadius.circular(5))),
            child: const Text("CANCEL", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
