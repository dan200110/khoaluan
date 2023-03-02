import 'package:flutter/material.dart';
import 'package:flutter_medical_management_project/models/inventory.dart';
import 'package:flutter_medical_management_project/services/inventory_service.dart';

class PharmacistInventory extends StatefulWidget {
  @override
  _PharmacistInventory createState() => _PharmacistInventory();
}

class _PharmacistInventory extends State<PharmacistInventory> {
  InventoryService inventoryService = InventoryService();
  List<InventoryModel> inventorys = List.empty();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    inventoryService.getAllInventory().then((result) {
      setState(() {
        inventorys = List.from(result);
        print(result);
      });
    }).catchError((err) {
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drug inventory"),
      ),
      body: Row(
        children: <Widget>[
          SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        minWidth: MediaQuery.of(context).size.width),
                    child: DataTable(
                      showCheckboxColumn: true,
                      columns: [
                        DataColumn(
                          label: Text("Supplier name"),
                          numeric: false,
                        ),
                        DataColumn(
                          label: Text("Drug name"),
                          numeric: false,
                        ),
                        DataColumn(
                          label: Text("Quantity"),
                          numeric: false,
                        ),
                        DataColumn(
                          label: Text("Price"),
                          numeric: false,
                        ),
                        DataColumn(
                          label: Text("Expire date"),
                          numeric: false,
                        ),
                        DataColumn(
                          label: Text("Image path"),
                          numeric: false,
                        ),
                        DataColumn(
                          label: Text("Required permission"),
                          numeric: false,
                        ),
                      ],
                      rows: inventorys
                          .map(
                            (inventory) => DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    inventory.imagePath!,
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    inventory.name!,
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    inventory.quantity!.toString(),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    inventory.expireDate!,
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    inventory.price!.toString(),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    inventory.supplierId!,
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    inventory.supplierName!,
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              )
              //           }
              //         }
              //       }),
              ),
        ],
      ),
    );
  }
}
