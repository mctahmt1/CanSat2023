import 'package:cansat_2023/Areas/Area1/Models/base/baseModel.dart';
import 'package:cansat_2023/Areas/Area1/Models/bmp180/bmp180.dart';
import 'package:cansat_2023/Areas/Area1/Models/gps/gps.dart';
import 'package:cansat_2023/Areas/Area1/Models/mpu/mpu.dart';

class DataModel extends BaseModel {
  GpsData? gpsdata;
  Bmp180Data? bmpData;
  MpuData? mpuData;
  Null? cmdEcho;
  Null? cmd;
  Null? value;

  DataModel({this.cmdEcho, this.cmd, this.value});

  DataModel.fromJson(Map<String, dynamic> json) {
    cmdEcho = json['CMD_ECHO'];
    cmd = json['CMD'];
    value = json['VALUE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CMD_ECHO'] = this.cmdEcho;
    data['CMD'] = this.cmd;
    data['VALUE'] = this.value;
    return data;
  }
}
