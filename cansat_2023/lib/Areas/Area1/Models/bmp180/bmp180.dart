class Bmp180Data {
  int? altitude;
  int? temperature;
  int? pressure;
  Bmp180Data({this.altitude, this.pressure, this.temperature});
  Bmp180Data.fromJson(Map<String, dynamic> json) {
    temperature = json['TEMPERATURE'];
    altitude = json['ALTITUDE'];
    pressure = json['PRESSURE'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TEMPERATURE'] = this.temperature;
    data['ALTITUDE'] = this.altitude;
    data['PRESSURE'] = this.pressure;
    return data;
  }
}
