import 'dart:ffi';

class InventoryModel {
  String? name;
  String? quantity;
  String? imagePath;
  String? expireDate;
  String? price;
  String? supplierId;
  String? supplierName;

  InventoryModel({
    required this.name,
    required this.quantity,
    required this.imagePath,
    required this.expireDate,
    required this.price,
    required this.supplierId,
    required this.supplierName,
  });
  factory InventoryModel.fromJson(Map<String, dynamic> json) {
    return InventoryModel(
      name: json['name'],
      quantity: json['quantity'],
      imagePath: json['imagePath'],
      expireDate: json['expireDate'],
      price: json['price'],
      supplierId: json['supplierId'],
      supplierName: json['supplierName'],
    );
  }
}
