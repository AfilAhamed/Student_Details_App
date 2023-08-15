// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudentsAdapter extends TypeAdapter<Students> {
  @override
  final int typeId = 1;

  @override
  Students read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Students(
      name: fields[1] as String,
      age: fields[2] as String,
      clas: fields[3] as String,
      id: fields[0] as int?,
      // imgg: fields[3] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Students obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.age)
      ..writeByte(3)
      ..write(obj.clas);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
