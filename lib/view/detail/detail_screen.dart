import 'package:flutter/material.dart';
import '../../data/models/service_model.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ServiceModel service = ModalRoute.of(context)!.settings.arguments as ServiceModel;

    return Scaffold(
      appBar: AppBar(title: Text(service.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                service.icon,
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 20),
            Text(
              service.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              service.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
