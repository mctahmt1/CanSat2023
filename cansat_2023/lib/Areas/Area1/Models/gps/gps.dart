class GpsData {
  int? gpsAltitude;
  int? gpsLatitude;
  int? gpsLongitude;
  int? gpsSats;
  String? gpsTime;
  GpsData(
      {this.gpsTime,
      this.gpsAltitude,
      this.gpsLatitude,
      this.gpsLongitude,
      this.gpsSats});
  GpsData.fromJson(Map<String, dynamic> json) {
    gpsTime = json['GPS_TIME'];
    gpsAltitude = json['GPS_ALTITUDE'];
    gpsLatitude = json['GPS_LATITUDE'];
    gpsLongitude = json['GPS_LONGITUDE'];
    gpsSats = json['GPS_SATS'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['GPS_TIME'] = this.gpsTime;
    data['GPS_ALTITUDE'] = this.gpsAltitude;
    data['GPS_LATITUDE'] = this.gpsLatitude;
    data['GPS_LONGITUDE'] = this.gpsLongitude;
    data['GPS_SATS'] = this.gpsSats;
    return data;
  }
}
