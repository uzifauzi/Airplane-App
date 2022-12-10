import 'package:airplane_app/models/destination_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DestinationService {
  // tampung/ambil semua data bedasar referensi dari table destination
  CollectionReference _collectionRef =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> fetchDestinations() async {
    try {
      // var result berisi data yang diambil
      QuerySnapshot result = await _collectionRef.get();

      // var destinations diisi dari data result yang dikembalikan dlm bentuk list
      List<DestinationModel> destinations = result.docs.map((e) {
        return DestinationModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return destinations;
    } catch (e) {
      rethrow;
    }
  }
}
