// To parse this JSON data, do
//
//     final customaApiModal = customaApiModalFromJson(jsonString);

import 'dart:convert';

CustomApiModal customApiModalFromJson(String str) =>
    CustomApiModal.fromJson(json.decode(str));

String customApiModalToJson(CustomApiModal data) =>
    json.encode(data.toJson());

class CustomApiModal {
  List<Table> table;

  CustomApiModal({
    required this.table,
  });

  factory CustomApiModal.fromJson(Map<String, dynamic> json) =>
      CustomApiModal(
        table: List<Table>.from(json["Table"].map((x) => Table.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Table": List<dynamic>.from(table.map((x) => x.toJson())),
      };
}

class Table {
  String status;
  String statusMsg;
  String OTP;
  String name;

  Table({
    required this.status,
    required this.statusMsg,
    required this.OTP,
    required this.name,
  });

  factory Table.fromJson(Map<String, dynamic> json) => Table(
        status: json["Status"],
        statusMsg: json["StatusMsg"],
    OTP: json["OTP"],
        name: json["Name"],
      );

  Map<String, dynamic> toJson() => {
        "Status": status,
        "StatusMsg": statusMsg,
        "OTP": OTP,
        "Name": name,
      };
}
