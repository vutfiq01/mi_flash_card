// import 'package:flutter/material.dart';
// import 'package:mi_flash_card/widget/custom_appbar.dart';
// import 'package:mi_flash_card/widget/navigation_drawer.dart';

// class DatingProfilePage extends StatelessWidget {
//   const DatingProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.teal,
//       appBar: const CustomAppBar(title: 'Dating Profile'),
//       drawer: const MyNavigationDrawer(),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: MediaQuery.of(context).size.height / 2,
//             child: Stack(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 45),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       image: const DecorationImage(
//                           image: AssetImage('images/dating_profile.jpg'),
//                           fit: BoxFit.cover),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 16.0,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         ClipOval(
//                           child: Material(
//                             color: Colors.teal[900],
//                             child: InkWell(
//                               onTap: () {},
//                               child: const SizedBox(
//                                 width: 80,
//                                 height: 80,
//                                 child: Icon(
//                                   Icons.clear_rounded,
//                                   size: 50,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         ClipOval(
//                           child: Material(
//                             color: Colors.teal[900],
//                             child: InkWell(
//                               onTap: () {},
//                               child: const SizedBox(
//                                 width: 100,
//                                 height: 100,
//                                 child: Icon(
//                                   Icons.favorite,
//                                   size: 65,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         ClipOval(
//                           child: Material(
//                             color: Colors.teal[900],
//                             child: InkWell(
//                               onTap: () {},
//                               child: const SizedBox(
//                                 width: 80,
//                                 height: 80,
//                                 child: Icon(
//                                   Icons.watch_later,
//                                   size: 50,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 8,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   'Rafiqul, 28',
//                   style: TextStyle(
//                     fontFamily: 'FrederickatheGreat',
//                     fontSize: 40,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   'Software Engineer',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 20,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   'Bio',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 28,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   "Hi, I’m Rafiqul. I’m a simple person who likes to enjoy life. I love nature, animals, and music. I’m looking for someone who is kind, caring, and genuine. If you want to chat, send me a message.",
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 13,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
