import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Showdata extends StatefulWidget {
  const Showdata({super.key});

  @override
  State<Showdata> createState() => _ShowdataState();
}

class _ShowdataState extends State<Showdata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fetching Data')),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("users").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      // child: Text("${snapshot.data!.docs[index]['name'][0]}"),
                      child: Text("${index + 1}"),
                    ),
                    title: Text("${snapshot.data!.docs[index]['title']}"),
                    subtitle: Text(
                      "${snapshot.data!.docs[index]['description']}",
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(child: Text('${snapshot.hasError.toString()}'));
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
          // Default return to satisfy non-nullable Widget return type
          return SizedBox.shrink();
        },
      ),
    );
  }
}
