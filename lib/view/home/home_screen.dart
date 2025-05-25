import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/home_provider.dart';
import 'widgets/service_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: provider.isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: provider.services.length,
                itemBuilder: (context, index) {
                  final service = provider.services[index];
return ServiceCard(
  title: service.title,
  description: service.description,
  iconPath: service.icon,
  onTap: () {
    Navigator.pushNamed(
      context,
      '/detail',
      arguments: service,
    );
  },
);
                },
              ),
      ),
    );
  }
}
