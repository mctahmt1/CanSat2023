import 'base/base_model.dart';
import 'bmp/bmp.dart';
import 'cmd/cmd.dart';
import 'control/control.dart';
import 'gps/gps.dart';
import 'mpu/mpu.dart';

class Telemetry extends BaseModel {
  String? packetCount;
  String? missionTime;
  String? mode;
  String? state;
  String? voltage;
  Gps? gps;
  Mpu? mpu;
  Bmp? bmp;
  Control? control;
  CmdEcho? cmdEcho;

  Telemetry(
      {this.packetCount,
      this.missionTime,
      this.mode,
      this.state,
      this.voltage,
      this.gps,
      this.mpu,
      this.bmp,
      this.control,
      this.cmdEcho});

  Telemetry.fromJson(Map<String, dynamic> json) {
    packetCount = json['PacketCount'];
    missionTime = json['MissionTime'];
    mode = json['Mode'];
    state = json['State'];
    voltage = json['Voltage'];
    gps = json['Gps'] != null ? Gps.fromJson(json['Gps']) : null;
    mpu = json['Mpu'] != null ? Mpu.fromJson(json['Mpu']) : null;
    bmp = json['Bmp'] != null ? Bmp.fromJson(json['Bmp']) : null;
    control =
        json['Control'] != null ? Control.fromJson(json['Control']) : null;
    cmdEcho =
        json['CmdEcho'] != null ? CmdEcho.fromJson(json['CmdEcho']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['PacketCount'] = packetCount;
    data['MissionTime'] = missionTime;
    data['Mode'] = mode;
    data['State'] = state;
    data['Voltage'] = voltage;
    if (gps != null) {
      data['Gps'] = gps!.toJson();
    }
    if (mpu != null) {
      data['Mpu'] = mpu!.toJson();
    }
    if (bmp != null) {
      data['Bmp'] = bmp!.toJson();
    }
    if (control != null) {
      data['Control'] = control!.toJson();
    }
    if (cmdEcho != null) {
      data['CmdEcho'] = cmdEcho!.toJson();
    }
    return data;
  }
}
