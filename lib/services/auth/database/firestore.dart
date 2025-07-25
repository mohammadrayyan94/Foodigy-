import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference orders = FirebaseFirestore.instance.collection(
    'orders',
  );

  Future<void> saveOrderToFirebase(String receipt) async {
    await orders.add({'date': DateTime.now(), 'order': receipt});
  }
}
