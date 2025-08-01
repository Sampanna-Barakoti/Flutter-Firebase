// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_start/otpscreen.dart';
// import 'package:flutter/material.dart';

// class Phoneauth extends StatefulWidget {
//   const Phoneauth({super.key});

//   @override
//   State<Phoneauth> createState() => _PhoneauthState();
// }

// class _PhoneauthState extends State<Phoneauth> {
//   TextEditingController phoneController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Phone Authentication'), centerTitle: true),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24),
//             child: TextField(
//               controller: phoneController,

//               decoration: InputDecoration(
//                 hintText: 'Enter your Number',
//                 suffixIcon: Icon(Icons.phone),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(24),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 30),
//           ElevatedButton(
//             onPressed: () async {
//               await FirebaseAuth.instance.verifyPhoneNumber(
//                 verificationCompleted: (PhoneAuthCredential credential) {
//                   print("✔ Auto verification completed");
//                 },
//                 verificationFailed: (FirebaseAuthException ex) {
//                   print("❌ Verification failed: ${ex.message}");
//                 },
//                 codeSent: (String verificationid, int? resendToken) {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder:
//                           (context) =>
//                               Otpscreen(verificationid: verificationid),
//                     ),
//                   );
//                 },
//                 codeAutoRetrievalTimeout: (String verificationid) {},
//                 phoneNumber: phoneController.text.toString(),
//               );
//             },
//             child: Text('Verify'),
//           ),
//         ],
//       ),
//     );
//   }
// }
