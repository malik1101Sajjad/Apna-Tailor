// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'female_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FemaleAdapter extends TypeAdapter<Female> {
  @override
  final int typeId = 2;

  @override
  Female read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Female(
      id: fields[0] as String,
      name: fields[1] as String,
      phone: fields[2] as String,
      length: fields[3] as String,
      arm: fields[4] as String,
      armRound: fields[5] as String,
      shoulder: fields[6] as String,
      chest: fields[7] as String,
      waist: fields[8] as String,
      hips: fields[9] as String,
      lap: fields[10] as String,
      side: fields[11] as String,
      neck: fields[12] as String,
      pant: fields[13] as String,
      paincha: fields[14] as String,
      pantWidth: fields[15] as String,
      additionalInfo: fields[16] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Female obj) {
    writer
      ..writeByte(17)
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
      ..write(obj.armRound)
      ..writeByte(6)
      ..write(obj.shoulder)
      ..writeByte(7)
      ..write(obj.chest)
      ..writeByte(8)
      ..write(obj.waist)
      ..writeByte(9)
      ..write(obj.hips)
      ..writeByte(10)
      ..write(obj.lap)
      ..writeByte(11)
      ..write(obj.side)
      ..writeByte(12)
      ..write(obj.neck)
      ..writeByte(13)
      ..write(obj.pant)
      ..writeByte(14)
      ..write(obj.paincha)
      ..writeByte(15)
      ..write(obj.pantWidth)
      ..writeByte(16)
      ..write(obj.additionalInfo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FemaleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
