class LoginReqModel{
  String?userName;
  String?password;
  String?deviceType;
  LoginReqModel({
    this.userName,
    this.password,
    this.deviceType
});
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data["uid"] = userName;
    data["password"] = password;
    data["device_type"] = deviceType;
    return data;
  }
}



class LoginResModel {
  bool? success;
  String? message;
  Data? data;

  LoginResModel({this.success, this.message, this.data});

  LoginResModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }
}

class Data {
  int? id;
  String? name;
  String? uid;
  String? roleType;
  String? shift;
  String? profileImage;
  String? parentId;
  String? firebaseToken;
  String? organizationId;
  Null? shifttime;
  List<OfficeDetails>? officeDetails;

  Data(
      {this.id,
        this.name,
        this.uid,
        this.roleType,
        this.shift,
        this.profileImage,
        this.parentId,
        this.firebaseToken,
        this.organizationId,
        this.shifttime,
        this.officeDetails});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    uid = json['uid'];
    roleType = json['role_type'];
    shift = json['shift'];
    profileImage = json['profile_image'];
    parentId = json['parent_id'];
    firebaseToken = json['firebase_token'];
    organizationId = json['organization_id'];
    shifttime = json['shifttime'];
    if (json['officeDetails'] != null) {
      officeDetails = <OfficeDetails>[];
      json['officeDetails'].forEach((v) {
        officeDetails!.add(new OfficeDetails.fromJson(v));
      });
    }
  }
}

class OfficeDetails {
  int? id;
  String? name;
  String? location;
  String? latitude;
  String? longitude;
  String? distance;
  int? organizationId;

  OfficeDetails(
      {this.id,
        this.name,
        this.location,
        this.latitude,
        this.longitude,
        this.distance,
        this.organizationId});

  OfficeDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    location = json['location'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    distance = json['distance'];
    organizationId = json['organization_id'];
  }

}