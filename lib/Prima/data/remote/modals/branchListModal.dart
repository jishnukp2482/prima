// To parse this JSON data, do
//
//     final branchCodeCreationModal = branchCodeCreationModalFromJson(jsonString);

import 'dart:convert';

BranchListModal branchCodeCreationModalFromJson(String str) => BranchListModal.fromJson(json.decode(str));

String branchCodeCreationModalToJson(BranchListModal data) => json.encode(data.toJson());

class BranchListModal {
  List<BranchModal> table;

  BranchListModal({
    required this.table,
  });

  factory BranchListModal.fromJson(Map<String, dynamic> json) => BranchListModal(
    table: List<BranchModal>.from(json["Table"].map((x) => BranchModal.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Table": List<dynamic>.from(table.map((x) => x.toJson())),
  };
}

class BranchModal {
  String brCode;
  String brName;

  BranchModal({
    required this.brCode,
    required this.brName,
  });

  factory BranchModal.fromJson(Map<String, dynamic> json) => BranchModal(
    brCode: json["Br_Code"],
    brName: json["Br_Name"],
  );

  Map<String, dynamic> toJson() => {
    "Br_Code": brCode,
    "Br_Name": brName,
  };
}
