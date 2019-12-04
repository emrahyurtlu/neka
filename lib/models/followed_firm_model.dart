class FollowedFirmModel {
  int id;
  int firmId;

  FollowedFirmModel({this.id, this.firmId});

  @override
  String toString() {
    return 'FollowedFirm{id: $id, firmId: $firmId}';
  }

  Map<String, dynamic> toMap({withId = true}) {
    var map = Map<String, dynamic>();
    if (withId) map['id'] = id;
    map['firmId'] = firmId;
    return map;
  }

  FollowedFirmModel.from(Map<String, dynamic> map) {
    this.id = map['id'];
    this.firmId = map['firmId'];
  }
}
