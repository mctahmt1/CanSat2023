class Control {
  String? hsDeployed;
  String? pcDeployed;
  String? mastRaised;

  Control({this.hsDeployed, this.pcDeployed, this.mastRaised});

  Control.fromJson(Map<String, dynamic> json) {
    hsDeployed = json['HsDeployed'];
    pcDeployed = json['PcDeployed'];
    mastRaised = json['MastRaised'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['HsDeployed'] = this.hsDeployed;
    data['PcDeployed'] = this.pcDeployed;
    data['MastRaised'] = this.mastRaised;
    return data;
  }
}
