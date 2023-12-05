// To parse this JSON data, do
//
//     final profileData = profileDataFromJson(jsonString);

import 'dart:convert';

ProfileData profileDataFromJson(String str) =>
    ProfileData.fromJson(json.decode(str));

String profileDataToJson(ProfileData data) => json.encode(data.toJson());

class ProfileData {
  bool success;
  String message;
  Data data;

  ProfileData({
    required this.success,
    required this.message,
    required this.data,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) => ProfileData(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  String id;
  String shortcode;
  String firstname;
  String lastname;
  String salonName;
  List<dynamic> address;
  String email;
  String phoneNumber;
  List<dynamic> services;
  List<dynamic> feedback;
  int v;
  String dataId;
  int otp;

  Data({
    required this.id,
    required this.shortcode,
    required this.firstname,
    required this.lastname,
    required this.salonName,
    required this.address,
    required this.email,
    required this.phoneNumber,
    required this.services,
    required this.feedback,
    required this.v,
    required this.dataId,
    required this.otp,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        shortcode: json["shortcode"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        salonName: json["salonName"],
        address: List<dynamic>.from(json["address"].map((x) => x)),
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        services: List<dynamic>.from(json["services"].map((x) => x)),
        feedback: List<dynamic>.from(json["feedback"].map((x) => x)),
        v: json["__v"],
        dataId: json["id"],
        otp: json["OTP"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "shortcode": shortcode,
        "firstname": firstname,
        "lastname": lastname,
        "salonName": salonName,
        "address": List<dynamic>.from(address.map((x) => x)),
        "email": email,
        "phoneNumber": phoneNumber,
        "services": List<dynamic>.from(services.map((x) => x)),
        "feedback": List<dynamic>.from(feedback.map((x) => x)),
        "__v": v,
        "id": dataId,
        "OTP": otp,
      };
}
