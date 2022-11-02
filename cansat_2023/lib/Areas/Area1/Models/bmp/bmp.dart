class Bmp {
  String? altitude;
  String? temperature;

  Bmp({this.altitude, this.temperature});

  Bmp.fromJson(Map<String, dynamic> json) {
    altitude = json['Altitude'];
    temperature = json['Temperature'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Altitude'] = this.altitude;
    data['Temperature'] = this.temperature;
    return data;
  }
}
