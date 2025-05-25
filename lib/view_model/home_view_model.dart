import 'package:flutter/foundation.dart';
import '../data/models/service_model.dart';
import '../data/repositories/service_repository.dart';

class HomeViewModel extends ChangeNotifier {
  final ServiceRepository _repository = ServiceRepository();
  List<ServiceModel> services = [];
  bool isLoading = false;

  Future<void> loadServices() async {
    isLoading = true;
    notifyListeners();
    services = await _repository.getServices();
    isLoading = false;
    notifyListeners();
  }
}
