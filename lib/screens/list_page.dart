import 'package:crud_hive_task/Functions/db_functions.dart';
import 'package:crud_hive_task/screens/image.dart';
import 'package:crud_hive_task/screens/inner_list_page.dart';
import 'package:crud_hive_task/screens/login_page.dart';
import 'package:crud_hive_task/screens/update_screen.dart';
import 'package:flutter/material.dart';

import '../Models/db_model.dart';

class ListPage extends StatelessWidget {
  const ListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListPage'),
        centerTitle: true,
        leading: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
            },
            child: const Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.blueGrey,
      body: ValueListenableBuilder(
        valueListenable: studentLists,
        builder:
            (BuildContext ctx, List<Students> studentLists, Widget? child) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView.builder(
                itemCount: studentLists.length,
                itemBuilder: (context, index) {
                  final data = studentLists[index];
                  return Card(
                    child: ListTile(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InnerList(
                                        name: data.name,
                                        age: data.age,
                                        clas: data.clas,
                                        // img: imageController.text,
                                      )));
                        },
                        title: Text('Name: ${data.name}'),
                        subtitle: Text('Class: ${data.clas}'),
                        leading: const CircleAvatar(
                          backgroundColor: Colors.deepOrange,
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => UpdateScreen(
                                              name: data.name,
                                              age: data.age,
                                              clas: data.clas,
                                              index: index)));

                                  // showBottomSheet(
                                  //     backgroundColor: const Color.fromARGB(
                                  //         255, 255, 255, 255),
                                  //     context: context,
                                  //     builder: (context) {
                                  //       return Wrap(
                                  //         children: [
                                  //           const SizedBox(
                                  //             height: 10,
                                  //           ),
                                  //           Padding(
                                  //             padding: const EdgeInsets.all(20),
                                  //             child: Column(
                                  //               children: [
                                  //                 const SizedBox(
                                  //                   height: 10,
                                  //                 ),
                                  //                 TextFormField(
                                  //                   decoration: const InputDecoration(
                                  //                       border:
                                  //                           OutlineInputBorder(),
                                  //                       hintText:
                                  //                           'Enter Your Name',
                                  //                       labelText: 'Name'),
                                  //                 ),
                                  //                 const SizedBox(
                                  //                   height: 10,
                                  //                 ),
                                  //                 TextFormField(
                                  //                   decoration:
                                  //                       const InputDecoration(
                                  //                           border:
                                  //                               OutlineInputBorder(),
                                  //                           hintText:
                                  //                               'Enter your Age',
                                  //                           labelText: 'Age'),
                                  //                 ),
                                  //                 const SizedBox(
                                  //                   height: 10,
                                  //                 ),
                                  //                 TextFormField(
                                  //                   decoration: const InputDecoration(
                                  //                       border:
                                  //                           OutlineInputBorder(),
                                  //                       hintText:
                                  //                           'Enter Your Class',
                                  //                       labelText: 'Class'),
                                  //                 ),
                                  //                 const SizedBox(
                                  //                   height: 15,
                                  //                 ),
                                  //                 ElevatedButton(
                                  //                     onPressed: () {

                                  //                       //update code here
                                  //                     },
                                  //                     child:
                                  //                         const Text('Update')),
                                  //                 const SizedBox(
                                  //                   height: 10,
                                  //                 ),
                                  //                 ElevatedButton(
                                  //                     onPressed: () {
                                  //                       // Navigator.pushReplacement(
                                  //                       //     context,
                                  //                       //     MaterialPageRoute(
                                  //                       //         builder:
                                  //                       //             (context) =>
                                  //                       //                 const Img()));
                                  //                     },
                                  //                     child: const Icon(
                                  //                         Icons.camera_alt)),
                                  //                 const SizedBox(
                                  //                   height: 20,
                                  //                 )
                                  //               ],
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       );
                                  //     });
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.blue,
                                )),
                            IconButton(
                              onPressed: () {
                                deletestudents(index);
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        )),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
