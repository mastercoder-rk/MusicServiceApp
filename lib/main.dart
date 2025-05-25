import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/home_provider.dart';
import 'view/home/home_screen.dart';
import 'view/detail/detail_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeProvider()..fetchServices(),
      child: MaterialApp(
        title: 'Music Services',
        theme: ThemeData.dark(),
        routes: {
          '/': (context) => HomeScreen(),
          '/detail': (context) => DetailScreen(),
        },
      ),
    );
  }
}
