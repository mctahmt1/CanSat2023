class Gps {
  String? gpsTime;
  String? gpsAltitude;
  String? gpsLatitude;
  String? gpsLongitude;
  String? gpsSats;

  Gps(
      {this.gpsTime,
      this.gpsAltitude,
      this.gpsLatitude,
      this.gpsLongitude,
      this.gpsSats});

  Gps.fromJson(Map<String, dynamic> json) {
    gpsTime = json['GpsTime'];
    gpsAltitude = json['GpsAltitude'];
    gpsLatitude = json['GpsLatitude'];
    gpsLongitude = json['GpsLongitude'];
    gpsSats = json['GpsSats'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['GpsTime'] = this.gpsTime;
    data['GpsAltitude'] = this.gpsAltitude;
    data['GpsLatitude'] = this.gpsLatitude;
    data['GpsLongitude'] = this.gpsLongitude;
    data['GpsSats'] = this.gpsSats;
    return data;
  }
}
