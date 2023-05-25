// To parse this JSON data, do
//
//     final customerCreationResponseModal = customerCreationResponseModalFromJson(jsonString);

import 'dart:convert';

CustomerCreationResponseModal customerCreationResponseModalFromJson(String str) => CustomerCreationResponseModal.fromJson(json.decode(str));

String customerCreationResponseModalToJson(CustomerCreationResponseModal data) => json.encode(data.toJson());

class CustomerCreationResponseModal {
  List<Table> table;

  CustomerCreationResponseModal({
    required this.table,
  });

  factory CustomerCreationResponseModal.fromJson(Map<String, dynamic> json) => CustomerCreationResponseModal(
    table: List<Table>.from(json["Table"].map((x) => Table.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Table": List<dynamic>.from(table.map((x) => x.toJson())),
  };
}

class Table {
  int customerId;
  String memberNo;
  String sbNo;

  Table({
    required this.customerId,
    required this.memberNo,
    required this.sbNo,
  });

  factory Table.fromJson(Map<String, dynamic> json) => Table(
    customerId: json["CustomerID"],
    memberNo: json["MemberNo"],
    sbNo: json["SBNo"],
  );

  Map<String, dynamic> toJson() => {
    "CustomerID": customerId,
    "MemberNo": memberNo,
    "SBNo": sbNo,
  };
}
