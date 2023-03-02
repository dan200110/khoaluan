import 'dart:ffi';

class InventoryModel {
  String? email;
  String? name;
  int? quantity;
  String? batchId;
  String? expireDate;
  int? price;
  String? supplierId;
  String? supplierName;

  InventoryModel({
    required this.email,
    required this.name,
    required this.quantity,
    required this.batchId,
    required this.expireDate,
    required this.price,
    required this.supplierId,
    required this.supplierName,
  });
  factory InventoryModel.fromJson(Map<String, dynamic> json) {
    return InventoryModel(
      email: json['email'],
      name: json['name'],
      quantity: json['quantity'],
      batchId: json['batchId'],
      expireDate: json['expireDate'],
      price: json['price'],
      supplierId: json['supplierId'],
      supplierName: json['supplierName'],
    );
  }
}
