class ConditionDTO {
  final String text;
  final String icon;
  final num code;
  ConditionDTO({
    required this.text,
    required this.code,
    required this.icon,
  });

  factory ConditionDTO.fromMap(Map<String, dynamic> map) {
    return ConditionDTO(
      text: map['text'] ?? '',
      code: map['code'] ?? 0,
      icon: map['icon'] ?? '',
    );
  }
}
