// import 'package:flutter/material.dart';

// class DailogePermission extends StatelessWidget {
//   const DailogePermission({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return 
// Future<dynamic> dailoge_permission(BuildContext context) {
//   return showDialog(
//   barrierColor: Colors.transparent,
//   context: context,
//   builder: (BuildContext context) {
 
//     return Padding(
//       padding:
//           const EdgeInsets.only(left: 50, right: 50, bottom: 450, top: 130),
//       child: CustomButton(
//         border: false,
//         elevation: 3,
//         bradius: BorderRadius.circular(0),
//         color: Colors.white,
//         child: Scaffold(
//           backgroundColor: Colors.white,
//           appBar: AppBar(
//             backgroundColor: Colors.white,
//             actions: const [Icon(Icons.more_vert)],
//             title: Text(
//               'App Permission',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//             ),
//           ),
//           body: Column(
//             children: [
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//                 child: Row(
//                   children: [
//                     Image.asset(
//                       'assets/images/logo2.png',
//                       height: 25,
//                       width: 25,
//                     ),
//                     SizedBox(width: 25),
//                     Text('CCast',
//                         style: TextStyle(fontWeight: FontWeight.w600)),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Row(
//                     children: [
//                       Icon(
//                         Icons.folder_outlined,
//                         color: Colors.black,
//                       ),
//                       SizedBox(width: 25),
//                       Text(
//                         'Music and Audio',
//                         style: TextStyle(fontWeight: FontWeight.w600),
//                       ),
//                       Spacer(),
//                       Checkbox(value: isChecked, onChanged: (){})
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   },
// );
// };
//   }
// }