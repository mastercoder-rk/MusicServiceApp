import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final String iconPath;
  final VoidCallback onTap;

  const ServiceCard({
    required this.title,
    required this.description,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      margin: EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: Image.asset(iconPath, width: 40),
        title: Text(title),
        subtitle: Text(description),
        onTap: onTap,
      ),
    );
  }
}
