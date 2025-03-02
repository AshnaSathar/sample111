import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> createUserWithRole(String email, String role) async {
  User? user = FirebaseAuth.instance.currentUser;

  if (user != null) {
    // Store user role in Firestore
    await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
      'role': role,  // The role is passed here
      'email': email, // User email
      'createdAt': FieldValue.serverTimestamp(),
    });
  }
}
