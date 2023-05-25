// To parse this JSON data, do
//
//     final customerCreationRequestModal = customerCreationRequestModalFromJson(jsonString);

import 'dart:convert';

CustomerCreationRequestModal customerCreationRequestModalFromJson(String str) => CustomerCreationRequestModal.fromJson(json.decode(str));

String customerCreationRequestModalToJson(CustomerCreationRequestModal data) => json.encode(data.toJson());

class CustomerCreationRequestModal {
  int brCode;
  int custTypeCode;
  int custTitleCode;
  String custFirstName;
  String custMiddleName;
  String custLastName;
  String custFTitleCode;
  String custFFirstName;
  String custFMiddleName;
  String custFLastName;
  DateTime custDobInc;
  int custGender;
  int custPrimaryMobile;
  String custSecondaryMobile;
  String custPrimaryEmail;
  String custAdhaarNo;
  String custPanCard;
  String addTypeName;
  String addAddress1;
  String addAddress2;
  String addAddress3;
  String addCity;
  String addTaluk;
  String addDistrict;
  String addState;
  String addCountry;
  String addPinCode;
  String addLandmark;
  String photo;
  String signature;
  String document;
  String document2;

  CustomerCreationRequestModal({
    required this.brCode,
    required this.custTypeCode,
    required this.custTitleCode,
    required this.custFirstName,
    required this.custMiddleName,
    required this.custLastName,
    required this.custFTitleCode,
    required this.custFFirstName,
    required this.custFMiddleName,
    required this.custFLastName,
    required this.custDobInc,
    required this.custGender,
    required this.custPrimaryMobile,
    required this.custSecondaryMobile,
    required this.custPrimaryEmail,
    required this.custAdhaarNo,
    required this.custPanCard,
    required this.addTypeName,
    required this.addAddress1,
    required this.addAddress2,
    required this.addAddress3,
    required this.addCity,
    required this.addTaluk,
    required this.addDistrict,
    required this.addState,
    required this.addCountry,
    required this.addPinCode,
    required this.addLandmark,
    required this.photo,
    required this.signature,
    required this.document,
    required this.document2,
  });

  factory CustomerCreationRequestModal.fromJson(Map<String, dynamic> json) => CustomerCreationRequestModal(
    brCode: json["BrCode"],
    custTypeCode: json["CustTypeCode"],
    custTitleCode: json["CustTitleCode"],
    custFirstName: json["CustFirstName"],
    custMiddleName: json["CustMiddleName"],
    custLastName: json["CustLastName"],
    custFTitleCode: json["CustFTitleCode"],
    custFFirstName: json["CustFFirstName"],
    custFMiddleName: json["CustFMiddleName"],
    custFLastName: json["CustFLastName"],
    custDobInc: DateTime.parse(json["CustDobInc"]),
    custGender: json["CustGender"],
    custPrimaryMobile: json["CustPrimaryMobile"],
    custSecondaryMobile: json["CustSecondaryMobile"],
    custPrimaryEmail: json["CustPrimaryEmail"],
    custAdhaarNo: json["CustAdhaarNo"],
    custPanCard: json["CustPanCard"],
    addTypeName: json["AddTypeName"],
    addAddress1: json["AddAddress1"],
    addAddress2: json["AddAddress2"],
    addAddress3: json["AddAddress3"],
    addCity: json["AddCity"],
    addTaluk: json["AddTaluk"],
    addDistrict: json["AddDistrict"],
    addState: json["AddState"],
    addCountry: json["AddCountry"],
    addPinCode: json["AddPinCode"],
    addLandmark: json["AddLandmark"],
    photo: json["Photo"],
    signature: json["Signature"],
    document: json["Document"],
    document2: json["Document2"],
  );

  Map<String, dynamic> toJson() => {
    "BrCode": brCode,
    "CustTypeCode": custTypeCode,
    "CustTitleCode": custTitleCode,
    "CustFirstName": custFirstName,
    "CustMiddleName": custMiddleName,
    "CustLastName": custLastName,
    "CustFTitleCode": custFTitleCode,
    "CustFFirstName": custFFirstName,
    "CustFMiddleName": custFMiddleName,
    "CustFLastName": custFLastName,
    "CustDobInc": custDobInc.toIso8601String(),
    "CustGender": custGender,
    "CustPrimaryMobile": custPrimaryMobile,
    "CustSecondaryMobile": custSecondaryMobile,
    "CustPrimaryEmail": custPrimaryEmail,
    "CustAdhaarNo": custAdhaarNo,
    "CustPanCard": custPanCard,
    "AddTypeName": addTypeName,
    "AddAddress1": addAddress1,
    "AddAddress2": addAddress2,
    "AddAddress3": addAddress3,
    "AddCity": addCity,
    "AddTaluk": addTaluk,
    "AddDistrict": addDistrict,
    "AddState": addState,
    "AddCountry": addCountry,
    "AddPinCode": addPinCode,
    "AddLandmark": addLandmark,
    "Photo": photo,
    "Signature": signature,
    "Document": document,
    "Document2": document2,
  };
}
