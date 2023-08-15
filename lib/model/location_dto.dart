class LocationDTO {
  final String name;
  final String region;
  final String country;
  final num lat;
  final num lon;
  final String tzId;
  final num localtimeEpoch;
  final String localtime;

  LocationDTO({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.localtime,
    required this.tzId,
    required this.localtimeEpoch,
  });

  factory LocationDTO.fromMap(Map<String, dynamic> map) {
    return LocationDTO(
      name: map['name'] ?? '',
      region: map['region'] ?? '',
      country: map['country'] ?? '',
      lat: map['lat'] ?? 0,
      lon: map['lon'] ?? 0,
      localtime: map['localtime'] ?? '',
      localtimeEpoch: map['localtime_epoch'] ?? 0,
      tzId: map['tz_id'] ?? '',
    );
  }
}
