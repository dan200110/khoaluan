import 'dart:ffi';

class DoctorOrderModel {
  String? doctorName;
  String? doctorContact;
  String? doctorEmail;
  List? drugId;
  List? drugNames;
  List? drugQuantity;
  List? realQuantity;
  List? drugPrice;
  String? totalAmount;
  String? pickupDate;
  bool isVerified;
  bool isPickedUp;

  DoctorOrderModel({
    required this.doctorName,
    required this.doctorContact,
    required this.drugPrice,
    required this.doctorEmail,
    required this.drugId,
    required this.drugNames,
    required this.drugQuantity,
    required this.realQuantity,
    required this.totalAmount,
    required this.pickupDate,
    required this.isVerified,
    required this.isPickedUp,
  });
  factory DoctorOrderModel.fromJson(Map<String, dynamic> json) {
    return DoctorOrderModel(
      doctorName: json['doctorName'],
      doctorContact: json['doctorContact'],
      drugPrice: json['doctorID'],
      doctorEmail: json['doctorEmail'],
      drugId: json['drugId'],
      drugNames: json['drugNames'],
      drugQuantity: json['drugQuantity'],
      realQuantity: json['realQuantity'],
      totalAmount: json['totalAmount'],
      pickupDate: json['pickupDate'],
      isVerified: json['isVerified'],
      isPickedUp: json['isPickedUp'],
    );
  }
}
