class Condition {
  final String text;
  final String icon;
  final num code;
  Condition({
    required this.text,
    required this.code,
    required this.icon,
  });

  factory Condition.fromMap(Map<String, dynamic> map) {
    return Condition(
      text: map['text'] ?? '',
      code: map['code'] ?? 0,
      icon: map['icon'] ?? '',
    );
  }
}
