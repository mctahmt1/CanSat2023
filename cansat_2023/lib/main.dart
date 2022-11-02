import 'dart:convert';
import 'package:cansat_2023/Areas/Area1/Models/bmp/bmp.dart';
import 'package:cansat_2023/Areas/Area1/Models/telemetry.dart';
import 'package:cansat_2023/Areas/Area1/Models/gps/gps.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cansat_2023/telemetry_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   TelemetryController().telemetryFutureBuilder(context);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Righteous',
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Json Veri Okuma"),
        ),
        body:
            //Column(
            //   children: [
            //     Text(TelemetryController().telemetryDatas.last.voltage!.toString()),
            Container(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: FutureBuilder(
              future: TelemetryController.readJsonFuture(context),
              builder: (context, cevap) {
                var telemetryList = TelemetryController.readJsonControl(cevap);
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                            "Packet-Count:${telemetryList[index].packetCount}"),
                        Text("last:${telemetryList.last.packetCount}"),
                        Text(
                            "Packet-Count:${telemetryList[index].gps!.gpsTime}"),
                        Text("Packet-Count:${telemetryList[index].mpu!.tiltY}"),
                        Text("Packet-Count:${telemetryList[index].mpu!.tiltY}")

                        // Text("Packet Count=" + data[index]["PACKET_COUNT"]),
                        // Text("Altitude=" + data[index]["ALTITUDE"]),
                        // Text("Temperature=" + data[index]["TEMPERATURE"]),
                      ],
                    ),
                  ),
                  itemCount: telemetryList == null ? 0 : telemetryList.length,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
