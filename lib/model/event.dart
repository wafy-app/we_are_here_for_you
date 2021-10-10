class Event {
  final String eventName;
  final DateTime eventDate;
  final String imageUrl;
  final double longitude;
  final double latitude;
  final String descraption;
  final String time;
  final String billing;
  List inRole;
  Event(
      {required this.eventName,
      required this.descraption,
      required this.imageUrl,
      required this.time,
      required this.eventDate,
      required this.billing,
      required this.longitude,
      required this.latitude,
      required this.inRole});
}
