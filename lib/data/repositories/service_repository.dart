import '../../core/services/firebase_service.dart';
import '../models/service_model.dart';

class ServiceRepository {
  final FirebaseService _firebaseService = FirebaseService();

  Future<List<ServiceModel>> getServices() async {
    final data = await _firebaseService.fetchServices();
    return data.map((json) => ServiceModel.fromJson(json)).toList();
  }
}
