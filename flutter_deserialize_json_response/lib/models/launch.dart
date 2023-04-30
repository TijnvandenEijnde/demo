import 'package:json_annotation/json_annotation.dart';

part 'launch.g.dart';

@JsonSerializable()
class Launch {
  const Launch({
    required this.flightNumber,
    required this.name,
    this.success,
});

  factory Launch.fromJson(Map<String, dynamic> json) =>
      _$LaunchFromJson(json);

  final int flightNumber;
  final String name;
  final bool? success;
}
