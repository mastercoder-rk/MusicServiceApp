import 'package:flutter/material.dart';
import '../view_model/home_view_model.dart';

class HomeProvider extends ChangeNotifier {
  final HomeViewModel _viewModel = HomeViewModel();

  List get services => _viewModel.services;
  bool get isLoading => _viewModel.isLoading;

  Future<void> fetchServices() async {
    await _viewModel.loadServices();
    notifyListeners();
  }
}
