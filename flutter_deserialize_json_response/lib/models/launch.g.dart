// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launch _$LaunchFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Launch',
      json,
      ($checkedConvert) {
        final val = Launch(
          flightNumber: $checkedConvert('flight_number', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          success: $checkedConvert('success', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {'flightNumber': 'flight_number'},
    );
