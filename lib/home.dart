// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: 
      
      ListView.separated(
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'List Item $position',
              ),
            ),
          );
        },
        separatorBuilder: (context, position) {
          return Card(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Separator $position',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}


// ListView.builder(
//		itemCount: 20,
// 		itemBuilder: (context, position) {
// 			return Card(
// 			child: Padding(
// 				padding: const EdgeInsets.all(20.0),
// 				child: Text(
// 				position.toString(),
// 				style: TextStyle(fontSize: 22.0),
// 				),
// 			),
// 			);
// 		},
// 		),



// ListView.separated(
// 		itemBuilder: (context, position) {
// 			return Card(
// 			child: Padding(
// 				padding: const EdgeInsets.all(15.0),
// 				child: Text(
// 				'List Item $position',
// 				),
// 			),
// 			);
// 		},
// 		separatorBuilder: (context, position) {
// 			return Card(
// 			color: Colors.grey,
// 			child: Padding(
// 				padding: const EdgeInsets.all(5.0),
// 				child: Text(
// 				'Separator $position',
// 				style: TextStyle(color: Colors.white),
// 				),
// 			),
// 			);
// 		},
// 		itemCount: 20,
// 		),


// ListView(
//         padding: EdgeInsets.all(20),
//         children: <Widget>[
//           CircleAvatar(
//             maxRadius: 50,
//             backgroundColor: Colors.black,
//             child: Icon(Icons.person, color: Colors.white, size: 50),
//           ),
//           Center(
//             child: Text(
//               'Sooraj S Nair',
//               style: TextStyle(
//                 fontSize: 50,
//               ),
//             ),
//           ),
//           Text(
//             "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gallery of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum,It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
//             style: TextStyle(
//               fontSize: 20,
//             ),
//           ),
//         ],
//       ),