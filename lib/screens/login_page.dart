import 'package:crud_hive_task/Functions/db_functions.dart';
import 'package:crud_hive_task/Models/db_model.dart';

import 'package:crud_hive_task/screens/list_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // File? file;
  // ImagePicker image = ImagePicker();
  final _nameController = TextEditingController();

  final _ageController = TextEditingController();

  final _clasController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddPage'),
        centerTitle: true,
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ListPage()));
              },
              child: const Text('View Students Details'))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your name',
                  labelText: 'Name',
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                controller: _ageController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Age',
                  labelText: 'Age',
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                controller: _clasController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Class',
                  labelText: 'Class',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.pushReplacement(context,
                    //     MaterialPageRoute(builder: (context) => ));
                  },
                  child: const Text('Add Your Image')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    addbuttonclick();
                    //---
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListPage(),
                        ));
                  },
                  //to  give border radius
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                  ),
                  icon: const Icon(Icons.add),
                  label: const Text('ADD')),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> addbuttonclick() async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    final _clas = _clasController.text.trim();
    // final _img = file;

    if (_name.isEmpty || _age.isEmpty || _clas.isEmpty) {
      return;
    }
    final childerns = Students(
      name: _name,
      age: _age,
      clas: _clas,
      // imgg: file!.name,
    );
    addstudents(childerns);
  }
}
