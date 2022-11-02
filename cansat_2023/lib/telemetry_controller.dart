import 'dart:convert';

import 'package:cansat_2023/telemetry_interface.dart';
import 'package:flutter/material.dart';

import 'Areas/Area1/Models/telemetry.dart';

class TelemetryController extends ITelemetry {
  List<Telemetry> telemetryDatas = [];
  static Future<Object?> readJsonFuture(context) {
    String jsonFilePath = "assets/datas/telemetry.json";

    return DefaultAssetBundle.of(context).loadString(jsonFilePath);
  }

  // static List<Telemetry> readJsonControl(AsyncSnapshot<Object?> response) {
  //   String jsonBaseKey = "Telemetry";

  //   var data;
  //   List<Telemetry> telemetryList = [];

  //   if (response != null && response.data != null && response.data != "") {
  //     data = json.decode(response.data.toString());
  //   }

  //   if (data != null) {
  //     telemetryList = (data[jsonBaseKey] as List)
  //         .map((e) => Telemetry.fromJson(e))
  //         .toList();
  //   }
  //   return telemetryList;
  // }

  static List<Telemetry> readJsonControl(Object? response) {
    String jsonBaseKey = "Telemetry";

    var data;
    List<Telemetry> telemetryList = [];

    if (response != null && response != null && response != "") {
      data = json.decode(response.toString());
    }

    if (data != null) {
      telemetryList = (data[jsonBaseKey] as List)
          .map((e) => Telemetry.fromJson(e))
          .toList();
    }
    return telemetryList;
  }

  Future<void> telemetryFutureBuilder(context) async {
    var x = await Future(() => readJsonFuture(context));
    telemetryDatas = readJsonControl(x);
  }

  List<Telemetry> getTelemetryDatas() {
    return telemetryDatas;
  }
}
