import 'package:hive_flutter/adapters.dart';

part 'db_model.g.dart';

@HiveType(typeId: 1)
class Students {
  @HiveField(0)
  int? id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String age;

  @HiveField(3)
  final String clas;

  // @HiveField(3)
  // final String imgg;

  Students({required this.name, required this.age, required this.clas, this.id
      // required this.imgg
      });
}
