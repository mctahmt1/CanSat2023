class BaseModel {
  int? teamID;
  String? missionTime;
  int? packetCount;
  String? mode;
  String? state;
  int? voltage;
  String? hsDeployed;
  String? pcDeployed;
  String? mastRaised;

  BaseModel(
      {this.teamID,
      this.packetCount,
      this.mode,
      this.state,
      this.voltage,
      this.hsDeployed,
      this.pcDeployed,
      this.missionTime,
      this.mastRaised});
  BaseModel.fromJson(Map<String, dynamic> json) {
    teamID = json['TEAM_ID'];
    missionTime = json['MISSION_TIME'];
    packetCount = json['PACKET_COUNT'];
    mode = json['MODE'];
    state = json['STATE'];
    hsDeployed = json['HS_DEPLOYED'];
    pcDeployed = json['PC_DEPLOYED'];
    mastRaised = json['MAST_RAISED'];
    voltage = json['VOLTAGE'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TEAM_ID'] = this.teamID;
    data['MISSION_TIME'] = this.missionTime;
    data['PACKET_COUNT'] = this.packetCount;
    data['MODE'] = this.mode;
    data['STATE'] = this.state;
    data['VOLTAGE'] = this.voltage;
    data['HS_DEPLOYED'] = this.hsDeployed;
    data['PC_DEPLOYED'] = this.pcDeployed;
    data['MAST_RAISED'] = this.mastRaised;
    return data;
  }
}
