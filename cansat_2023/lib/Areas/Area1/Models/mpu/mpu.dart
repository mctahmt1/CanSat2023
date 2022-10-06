class MpuData {
  int? tiltX;
  int? tiltY;
  MpuData({this.tiltX, this.tiltY});
  MpuData.fromJson(Map<String, dynamic> json) {
    tiltX = json['TILT_X'];
    tiltY = json['TILT_Y'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TILT_X'] = this.tiltX;
    data['TILT_Y'] = this.tiltY;
    return data;
  }
}
