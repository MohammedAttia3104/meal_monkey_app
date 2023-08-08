// import 'package:cloud_firestore/cloud_firestore.dart';
// import '../models/user_data/user_data_model.dart';
//
// class FirestoreRepository {
//   CollectionReference users = FirebaseFirestore.instance.collection('users');
//
//
//   Future<void> createUser({
//     required String uID,
//     required String name,
//     required String email,
//     required String mobileNo,
//     required String address,
//   }) async {
//     UserDataModel model = UserDataModel(
//       uID: uID,
//       name: name,
//       email: email,
//       address: address,
//       mobileNo: mobileNo,
//     );
//     return users
//         .doc(uID)
//         .set(model.toJson())
//         .then((value) => print("User Added"))
//         .catchError((error) => print("Failed to add user: $error"));
//   }
// }
