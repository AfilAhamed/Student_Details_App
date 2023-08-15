import 'package:crud_hive_task/screens/list_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InnerList extends StatelessWidget {
  //  InnerList({super.key});
  String name, age, clas;
  InnerList({
    super.key,
    required this.name,
    required this.age,
    required this.clas,
    // required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => ListPage()));
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text('DetailsPage'),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 500,
          width: 700,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 100,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Name:$name'),
                Text('Age:$age'),
                Text('Class:$clas'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
