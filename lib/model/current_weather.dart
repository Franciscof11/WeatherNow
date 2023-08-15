import 'package:app/model/condition.dart';

class CurrentDTO {
  final num lastUpdatedEpoch;
  final String lastUpdated;
  final double tempF;
  final double temperature;
  final int isDay; // 1 fsor true , 0 for false
  final ConditionDTO condition;
  CurrentDTO({
    required this.temperature,
    required this.isDay,
    required this.condition,
    required this.lastUpdated,
    required this.lastUpdatedEpoch,
    required this.tempF,
  });

  factory CurrentDTO.fromMap(Map<String, dynamic> map) {
    return CurrentDTO(
      temperature: map['temp_c'] ?? 90,
      isDay: map['is_day'] ?? 0,
      condition: ConditionDTO.fromMap(map['condition'] ?? <String, dynamic>{}),
      lastUpdated: map['last_updated'] ?? '',
      lastUpdatedEpoch: map['last_updated_epoch'] ?? 0,
      tempF: map['temp_f'] ?? 0,
    );
  }
}
