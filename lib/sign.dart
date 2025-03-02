// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class SignupPage extends StatefulWidget {
//   @override
//   _SignupPageState createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   String selectedRole = "User"; 
  
//   final String adminEmail = "admin@yourapp.com"; 
//   final String adminPassword = "admin123"; 

//  Future<void> signUpUser() async {
//   // Prevent creation of admin account
//   if (emailController.text == adminEmail && passwordController.text == adminPassword) {
//     print("❌ Admin cannot sign up through this page.");
//     return;
//   }

//   try {
//     // Check if email already exists
//     final signInMethods = await FirebaseAuth.instance.fetchSignInMethodsForEmail(emailController.text);
//     if (signInMethods.isNotEmpty) {
//       print("❌ Email already in use.");
//       return; // Email already in use, don't proceed with sign-up
//     }

//     // Proceed with sign-up if email doesn't exist
//     UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//       email: emailController.text,
//       password: passwordController.text,
//     );

//     // Store user data in Firestore
//     await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
//       'uid': userCredential.user!.uid,
//       'email': emailController.text,
//       'role': selectedRole,
//       'createdAt': FieldValue.serverTimestamp(),
//     });

//     print("✅ User Registered Successfully!");
//     Navigator.pop(context);
//   } catch (e) {
//     print("❌ Signup Error: $e");
//   }
// }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Sign Up")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(controller: emailController, decoration: InputDecoration(labelText: "Email")),
//             TextField(controller: passwordController, decoration: InputDecoration(labelText: "Password"), obscureText: true),
//             DropdownButton<String>(
//               value: selectedRole,
//               items: ["User", "Restaurant", "Delivery Boy"]
//                   .map((role) => DropdownMenuItem(value: role, child: Text(role)))
//                   .toList(),
//               onChanged: (value) => setState(() => selectedRole = value!),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(onPressed: signUpUser, child: Text("Sign Up")),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String selectedRole = "User"; // Default role is 'User'
  
  final String adminEmail = "admin@gmail.com"; // Admin email
  final String adminPassword = "123456"; // Admin password

  // Function to handle user sign-up
  Future<void> signUpUser() async {
    // Prevent creation of admin account with hardcoded credentials
    if (emailController.text == adminEmail && passwordController.text == adminPassword) {
      print("❌ Admin cannot sign up through this page.");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Admin cannot sign up through this page.")));
      return;  // Prevent admin from signing up through this page
    }

    try {
      // Check if email already exists
      final signInMethods = await FirebaseAuth.instance.fetchSignInMethodsForEmail(emailController.text);
      if (signInMethods.isNotEmpty) {
        print("❌ Email already in use.");
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email already in use.")));
        return; // Email already in use, don't proceed with sign-up
      }

      // Proceed with sign-up if email doesn't exist
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Store user data in Firestore
      await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
        'uid': userCredential.user!.uid,
        'email': emailController.text,
        'role': selectedRole,  // Selected role (User, Restaurant, or Delivery Boy)
        'createdAt': FieldValue.serverTimestamp(),
      });

      // Clear text fields
      emailController.clear();
      passwordController.clear();

      print("✅ User Registered Successfully!");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User Registered Successfully!")));
      Navigator.pop(context); // Go back to previous screen (or you can navigate to a different page)
    } catch (e) {
      print("❌ Signup Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Signup Error: $e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Text("Select Role", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            DropdownButton<String>(
              value: selectedRole,
              items: ["User", "Restaurant", "Delivery Boy"]
                  .map((role) => DropdownMenuItem(value: role, child: Text(role)))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedRole = value!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: signUpUser,
              child: Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
