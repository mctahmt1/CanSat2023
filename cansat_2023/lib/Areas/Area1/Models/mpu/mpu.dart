class Mpu {
  String? tiltX;
  String? tiltY;

  Mpu({this.tiltX, this.tiltY});

  Mpu.fromJson(Map<String, dynamic> json) {
    tiltX = json['TiltX'];
    tiltY = json['TiltY'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Tilt_X'] = this.tiltX;
    data['Tilt_Y'] = this.tiltY;
    return data;
  }
}
