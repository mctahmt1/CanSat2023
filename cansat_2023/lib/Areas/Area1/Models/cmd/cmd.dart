class CmdEcho {
  String? cmd;
  String? value;

  CmdEcho({this.cmd, this.value});

  CmdEcho.fromJson(Map<String, dynamic> json) {
    cmd = json['Cmd'];
    value = json['Value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Cmd'] = this.cmd;
    data['Value'] = this.value;
    return data;
  }
}
