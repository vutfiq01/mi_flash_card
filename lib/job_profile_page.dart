// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:mi_flash_card/widget/custom_appbar.dart';
// import 'package:mi_flash_card/widget/navigation_drawer.dart';

// class JobProfilePage extends StatelessWidget {
//   final double coverHeight = 280;
//   final double profileHeight = 144;
//   const JobProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.teal,
//       appBar: const CustomAppBar(title: 'Job Profile'),
//       drawer: const MyNavigationDrawer(),
//       body: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           buildTop(),
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 48),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Center(
//                   child: Text(
//                     'Md Rafiqul Islam',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 20,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Center(
//                   child: Text(
//                     'SOFTWARE ENGINEER',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 16,
//                       color: Colors.teal[100],
//                       letterSpacing: 2.5,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     buildProfileIcon(FontAwesomeIcons.slack),
//                     const SizedBox(width: 12),
//                     buildProfileIcon(FontAwesomeIcons.github),
//                     const SizedBox(width: 12),
//                     buildProfileIcon(FontAwesomeIcons.twitter),
//                     const SizedBox(width: 12),
//                     buildProfileIcon(FontAwesomeIcons.linkedin),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Center(
//                   child: SizedBox(
//                     height: 16,
//                     child: Divider(
//                       color: Colors.teal[100],
//                     ),
//                   ),
//                 ),
//                 lookupNumbers(),
//                 Center(
//                   child: SizedBox(
//                     height: 16,
//                     child: Divider(
//                       color: Colors.teal[100],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const Text(
//                   'About',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 25,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 16,
//                 ),
//                 const Text(
//                   'Flutter engineer and bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla dfgigs gwighiwhg gdsjigh gijg gwgig wbdg gsdkggsdb sdbgsbdg gwb gsdbghb sgdsbgj gdsbg egwh gsgsdg.',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 15,
//                     height: 1.4,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildTop() {
//     return Stack(
//       clipBehavior: Clip.none,
//       alignment: Alignment.center,
//       children: [
//         Container(
//           margin: EdgeInsets.only(
//             bottom: profileHeight / 2,
//           ),
//           child: buildCoverImage(),
//         ),
//         Positioned(
//           top: coverHeight - profileHeight / 2,
//           child: buildProfileImage(),
//         ),
//       ],
//     );
//   }

//   Widget buildCoverImage() => SizedBox(
//         width: double.infinity,
//         height: coverHeight,
//         child: FittedBox(
//             fit: BoxFit.cover,
//             child: Image.asset('images/flutter_dev_cover.jpg')),
//       );

//   Widget buildProfileImage() => CircleAvatar(
//         backgroundColor: Colors.white,
//         radius: (profileHeight / 2) + 5,
//         child: CircleAvatar(
//           radius: profileHeight / 2,
//           backgroundImage: const AssetImage('images/profile.jpg'),
//         ),
//       );

//   Widget buildProfileIcon(IconData icon) => CircleAvatar(
//         radius: 25,
//         backgroundColor: Colors.teal[900],
//         child: InkWell(
//           onTap: () {},
//           child: Center(
//             child: Icon(
//               icon,
//               size: 32,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       );

//   Widget lookupNumbers() => Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           buildNumbers(text: 'Projects', value: 27),
//           const SizedBox(
//             height: 24,
//             child: VerticalDivider(),
//           ),
//           buildNumbers(text: 'Following', value: 593),
//           const SizedBox(
//             height: 24,
//             child: VerticalDivider(),
//           ),
//           buildNumbers(text: 'Followers', value: 6841),
//         ],
//       );

//   Widget buildNumbers({
//     required String text,
//     required int value,
//   }) =>
//       Column(
//         children: <Widget>[
//           Text(
//             '$value',
//             style: const TextStyle(
//               color: Colors.white,
//               fontFamily: 'Poppins',
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Text(
//             text,
//             style: const TextStyle(
//               color: Colors.white,
//               fontFamily: 'Poppins',
//               fontSize: 14,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       );
// }
