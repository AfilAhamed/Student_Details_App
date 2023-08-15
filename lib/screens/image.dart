// import 'dart:io';
// import 'package:crud_hive_task/screens/login_page.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class Img extends StatefulWidget {
//   const Img({super.key});

//   @override
//   ImgState createState() => ImgState();
// }

// class ImgState extends State<Img> {
//   File? file;
//   ImagePicker image = ImagePicker();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: ElevatedButton(
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => LoginPage()));
//             },
//             child: const Icon(Icons.arrow_back_ios_new_outlined)),
//       ),
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             height: 200,
//             width: 200,
//             color: Colors.black12,
//             child: file == null
//                 ? const Icon(
//                     Icons.image,
//                     size: 200,
//                   )
//                 : Image.file(
//                     file!,
//                     fit: BoxFit.fill,
//                   ),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//           MaterialButton(
//             onPressed: () {
//               getcam();
//             },
//             color: Colors.blue,
//             child: const Text("Gallery"),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//           MaterialButton(
//             onPressed: () {
//               getall();
//             },
//             color: Colors.blue,
//             child: const Text("Camera"),
//           )
//         ],
//       )),
//     );
//   }

//   getcam() async {
//     var img = await image.pickImage(source: ImageSource.gallery);
//     setState(() {
//       file = File(img!.path);
//     });
//   }

//   getall() async {
//     var img = await image.pickImage(source: ImageSource.camera);
//     setState(() {
//       file = File(img!.path);
//     });
//   }
// }
