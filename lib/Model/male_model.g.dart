// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'male_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MaleAdapter extends TypeAdapter<Male> {
  @override
  final int typeId = 1;

  @override
  Male read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Male(
      id: fields[0] as String,
      name: fields[1] as String,
      phone: fields[2] as String,
      length: fields[3] as String,
      arm: fields[4] as String,
      shoulder: fields[5] as String,
      collar: fields[6] as String,
      chest: fields[7] as String,
      lap: fields[8] as String,
      pant: fields[9] as String,
      paincha: fields[10] as String,
      additionalInfo: fields[11] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Male obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.length)
      ..writeByte(4)
      ..write(obj.arm)
      ..writeByte(5)
      ..write(obj.shoulder)
      ..writeByte(6)
      ..write(obj.collar)
      ..writeByte(7)
      ..write(obj.chest)
      ..writeByte(8)
      ..write(obj.lap)
      ..writeByte(9)
      ..write(obj.pant)
      ..writeByte(10)
      ..write(obj.paincha)
      ..writeByte(11)
      ..write(obj.additionalInfo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MaleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
