import 'package:crud_hive_task/Functions/db_functions.dart';
import 'package:crud_hive_task/Models/db_model.dart';
import 'package:crud_hive_task/screens/list_page.dart';
import 'package:flutter/material.dart';

class UpdateScreen extends StatelessWidget {
  final String name;
  final String age;
  final String clas;
  final int index;
  // final String img;
  UpdateScreen(
      {super.key,
      required this.name,
      required this.age,
      required this.clas,
      // required this.img,
      required this.index});

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController(text: name);

    final _ageController = TextEditingController(text: age);

    final _clasController = TextEditingController(text: clas);

    return Scaffold(
      appBar: AppBar(
        title: const Text(' UpdatePage'),
        centerTitle: true,
        leading: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => ListPage()));
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Name',
                    labelText: 'Name'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _ageController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Age',
                    labelText: 'Age'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _clasController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Class',
                    labelText: 'Class'),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    //update code here
                    Students studentmodel = Students(
                      id: index,
                      name: _nameController.text,
                      age: _ageController.text,
                      clas: _clasController.text,
                    );

                    updatestudents(index, studentmodel);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListPage()));
                  },
                  child: const Text('Update')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder:
                    //             (context) =>
                    //                 const Img()));
                  },
                  child: const Icon(Icons.camera_alt)),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
