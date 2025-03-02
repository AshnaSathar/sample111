import 'package:agthia/Admin_pages/addNewsPage.dart';
import 'package:agthia/Admin_pages/admin_home.dart';
import 'package:agthia/DeliveryPersonnel_pages/delivery_home.dart';
import 'package:agthia/Restaurant_pages/restaurant_home.dart';
import 'package:agthia/User_pages/homescreen.dart';
import 'package:agthia/User_pages/mediapage.dart';
import 'package:agthia/backend_pages/backend_signup.dart';
import 'package:agthia/login.dart';
import 'package:agthia/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() 
async{
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyCnEnjy4IYxk_zX7vJOqCxyM-3l8kRvmeI', 
      appId: '1:451626362452:android:e74c8910f2051a765befc1', 
      messagingSenderId: '451626362452',
       projectId: 'agitha-46bdb')
    );
    print("firebase initialisation successfull");
  } catch (e) {
    print("error initialisation$e");
  }
  runApp(const Agthia());
}
class Agthia extends StatelessWidget {
  const Agthia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agthia',
      theme: ThemeData(
        primaryColor: Colors.blueGrey
      ),
     // home: addNewsPage(),
     home: LoginPage(),
      routes: {
        '/adminHome': (context) => AdminHome (),
        '/userHome': (context) => Homescreen(),
        '/restaurantHome': (context) => RestaurantHome(),
        '/deliveryHome': (context) => DeliveryHome(),
      },
    );
  }
}
