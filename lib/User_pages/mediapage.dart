// import 'package:agthia/User_pages/About.dart';
// import 'package:agthia/User_pages/brandspage.dart';
// import 'package:agthia/User_pages/carreerpage.dart';
// import 'package:agthia/User_pages/contactus.dart';
// import 'package:agthia/User_pages/homescreen.dart';
// import 'package:agthia/User_pages/mission.dart';
// import 'package:agthia/User_pages/news_1.dart';
// import 'package:agthia/User_pages/news_2.dart';
// import 'package:agthia/User_pages/news_3.dart';
// import 'package:agthia/User_pages/news_4.dart';
// import 'package:agthia/User_pages/ourpeople.dart';
// import 'package:agthia/User_pages/words_from_chairman.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class Mediapage extends StatelessWidget {
//   const Mediapage({super.key});
//   Future<void> _launchURL(String url) async {
//     final Uri uri = Uri.parse(url);
//     if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
//       throw 'Could not launch $url';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        appBar: AppBar(
//         title: Center(
//           child: Transform.translate(
//             offset: Offset(-10.0, 0.0),
//             child: Image(
//               image: AssetImage("asset/logo_agthia.jpg"),
//               height: 50,
//               fit: BoxFit.contain,
//             ),
//           ),
//         ),
//         iconTheme: IconThemeData(color: Colors.white),
//         backgroundColor: Color(0xFF282d37),
//       ),

//       drawer: Drawer(
//         width: 200,
//         backgroundColor: Color(0xFF282d37),
//         child: ListView(
//           padding: EdgeInsets.all(12),
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(color: Color(0xFF282d37)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Colors.white,
//                     child: Icon(Icons.person),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     "User",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   )
//                 ],
//               ),
//             ),
//             ListTile(
//               title: Text("Home",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Homescreen()));
//               },
//             ),
//             ExpansionTile(
//               //tilePadding: const EdgeInsets.only(left: 15, right: 15),
//               title: Text(
//                 "About us",
//                 style:
//                     TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               children: [
//                 ListTile(
//                   title: Text(
//                     "About",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => About()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Our People",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Ourpeople()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Mission/Vision",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Mission()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Word from Chairman",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => WordsFromChairman()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//               ],
//             ),
//             ListTile(
//               title: Text("Brands",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Brandspage()));
//               },
//             ),
//             ListTile(
//               title: Text("Media",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Mediapage()));
//               },
//             ),
//             ListTile(
//               title: Text("Carrier",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Carreerpage()));
//               },
//             ),
//             ListTile(
//               title: Text("Contact us",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Contactus()));
//               },
//             ),
//           ],
//         ),
//       ),
      
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             SizedBox(
//               height: 300,
//               child: Stack(
//                 children: [
//                   Positioned.fill(child: Image(image: AssetImage("asset/media.jpg"),
//                   fit: BoxFit.cover,))
//                 ],
//               ),
//             ),
//             SizedBox(height: 20,),

//             Container(
//               //width: MediaQuery.of(context).size.width,
//               width: 900,
//               height: 300,
//               //color: Color(0xFFf3eddf),
//               color: Colors.white70,
//               child: Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Center(
//                       child: Text(
//                         "Latest News",
//                         style:
//                             TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Divider(color: Colors.orange,),
//                     SizedBox(height: 10,),
//                      Center(
//                        child: StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance
//             .collection('latest_news')
//             .orderBy('timestamp', descending: true)
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Center(child: Text("No news available"));
//           }

//           final news = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: news.length,
//             itemBuilder: (context, index) {
//               var newsItem = news[index];
//               return ListTile(
//                 title: Text(newsItem['title']),
//                 subtitle: Text(newsItem['short_description']),
//                 onTap: () {
//                   // Navigate to the news link
//                   String newsLink = newsItem['link'];
//                   // Open the link in a web browser or navigate to a detailed page
//                 },
//               );
//             },
//           );
//         },)
//                      )


//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               color: Colors.black,
//               padding: EdgeInsets.only(),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Divider(color: Colors.white),
//                   SizedBox(height: 10),
//                   Text(
//                     "CONTACT",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 13,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "AL-SHARIQA TOWER\nFLOOR 7\nJABER AL MUBARAK STREET, BLOCK 2\nKUWAIT CITY",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.white, fontSize: 14),
//                   ),
//                   SizedBox(height: 15),
//                   Text(
//                     "Join our mailing list for updates\nGet news & other events",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.white70, fontSize: 14),
//                   ),

//                   SizedBox(height: 10),
//                   Padding(
//                     padding: EdgeInsets.only(),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
                      
//                       children: [
//                         SizedBox(
//                           width: MediaQuery.of(context).size.width/1.1,
//                           child: Center(
//                             child: TextField(
//                               textAlign: TextAlign.center,
//                               decoration: InputDecoration(
//                                 hintText: "Email",
//                                 filled: true,
//                                 fillColor: Colors.white,
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.only(),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   SizedBox(height: 10,),

//                         Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.red
//                         )
//                       ),
//                       width: MediaQuery.of(context).size.width/1.1,
//                       height: 40,
//                       child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                               minimumSize: Size(MediaQuery.of(context).size.width/1.1, 40),
//                               shape: RoundedRectangleBorder()
//                           ),
//                           onPressed: (){}, child: Text("Subscribe",style: TextStyle(color: Colors.black),)),),


//                   SizedBox(height: 15),
//                   Text("22260445",
//                       style: TextStyle(
//                           color: Colors.pink[200],
//                           fontWeight: FontWeight.bold)),
//                   Text("INFO@AGTHIA-FOOD.COM.KW",
//                       style: TextStyle(color: Colors.pink[200])),
//                   SizedBox(height: 10),
//                   Divider(color: Colors.white),
//                   SizedBox(height: 5),
//                   Icon(
//                     Icons.copyright,
//                     color: Colors.white,
//                   ),
//                   Text("Copyright", style: TextStyle(color: Colors.white)),
//                 ],
//               ),
//             ),
//                 ],
//               ),
//             ),
          
//         );


//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Mediapage extends StatefulWidget {
  const Mediapage({super.key});

  @override
  State<Mediapage> createState() => _MediapageState();
}

class _MediapageState extends State<Mediapage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Function to fetch news from Firestore
  Future<List<Map<String, dynamic>>> _getNews() async {
    QuerySnapshot snapshot = await _firestore.collection('latest_news')
        .orderBy('timestamp', descending: true)  // To get the most recent news first
        .get();

    return snapshot.docs.map((doc) => {
      'title': doc['title'],
      'short_description': doc['short_description'],
      'link': doc['link'],
    }).toList();
  }

  // Function to open the news link in a browser
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latest News"),
        backgroundColor: Color(0xFF282d37),
      ),
      backgroundColor: const Color.fromARGB(255, 189, 195, 181),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _getNews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("No news available"));
          } else {
            List<Map<String, dynamic>> news = snapshot.data!;
            return ListView.builder(
              itemCount: news.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: ListTile(
                    title: Text(
                      news[index]['title'],
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(news[index]['short_description']),
                    trailing: Icon(Icons.arrow_forward, color: Colors.blue),
                    onTap: () {
                      // Open the link when the user taps on a news item
                      _launchURL(news[index]['link']);
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
