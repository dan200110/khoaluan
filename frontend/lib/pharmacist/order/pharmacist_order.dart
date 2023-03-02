import 'package:flutter/material.dart';
import 'package:flutter_medical_management_project/models/doctorOrder.dart';
import 'package:flutter_medical_management_project/services/doctorOrder_service.dart';

class PharmacistOrder extends StatefulWidget {
  @override
  _PharmacistOrder createState() => _PharmacistOrder();
}

class _PharmacistOrder extends State<PharmacistOrder> {
  DoctorOrderService doctorOrderService = DoctorOrderService();
  List<DoctorOrderModel> doctor_orders = List.empty();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    doctorOrderService.getAllDoctorOrder().then((result) {
      setState(() {
        doctor_orders = List.from(result);
      });
    }).catchError((err) {
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All drug order"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              print('tap');
            },
          )
        ],
      ),
      body: Row(
        children: [
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
                          label: Text("ID"),
                          numeric: false,
                        ),
                        DataColumn(
                          label: Text("Doctor Name"),
                          numeric: false,
                        ),
                        DataColumn(
                          label: Text("Doctor Contact"),
                          numeric: false,
                        ),
                        DataColumn(
                          label: Text("drug Id"),
                          numeric: false,
                        ),
                        DataColumn(
                          label: Text("drug Names"),
                          numeric: false,
                        ),
                        DataColumn(
                          label: Text("total Amount"),
                          numeric: false,
                        ),
                        DataColumn(
                          label: Text("pickup Date"),
                          numeric: false,
                        ),
                      ],
                      rows: doctor_orders
                          .map(
                            (doctor_order) => DataRow(
                              onSelectChanged: (newValue) {
                                // Navigator.pushNamed(context, '/doctor_order_items');
                              },
                              cells: [
                                DataCell(
                                  Text(
                                    doctor_order.doctorName!,
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    doctor_order.doctorName!,
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    doctor_order.doctorContact!,
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    doctor_order.drugId.toString(),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    doctor_order.drugId.toString(),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    doctor_order.totalAmount!,
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    doctor_order.pickupDate!,
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  // void _onSelectedRow(bool selected, Product product) async {
  //   setState(() {
  //     if (selected) {
  //       products.add(product);
  //     } else {
  //       products.remove(product);
  //     }
  //   });
  // }

  // void _editProduct(BuildContext context, Product product) {
  //   _nameController.text = product.name;
  //   _uom.text = product.uom;
  //   _sPrice.text = product.sellingPrice.toString();
  //   _bPrice.text = product.buyingPrice.toString();
  //   showModalBottomSheetApp(
  //     context: context,
  //     builder: (BuildContext bc) {
  //       return Container(
  //         color: Color(0xFF737373),
  //         child: Container(
  //           decoration: new BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: new BorderRadius.only(
  //               topLeft: const Radius.circular(10.0),
  //               topRight: const Radius.circular(10.0),
  //             ),
  //           ),
  //           child: Wrap(
  //             children: <Widget>[
  //               Flex(
  //                 direction: Axis.horizontal,
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 mainAxisSize: MainAxisSize.max,
  //                 children: <Widget>[
  //                   Container(
  //                     width: (MediaQuery.of(context).size.width) * 0.5,
  //                     child: Padding(
  //                       padding: const EdgeInsets.symmetric(
  //                         vertical: 8.0,
  //                         horizontal: 16.0,
  //                       ),
  //                       child: TextField(
  //                         controller: _nameController,
  //                         autofocus: true,
  //                         keyboardType: TextInputType.text,
  //                         decoration: InputDecoration(
  //                           hintText: "Product Name",
  //                           hintStyle: TextStyle(
  //                             fontWeight: FontWeight.w800,
  //                             color: Colors.black54,
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                   Container(
  //                     width: (MediaQuery.of(context).size.width) * 0.5,
  //                     child: Padding(
  //                       padding: const EdgeInsets.symmetric(
  //                         vertical: 8.0,
  //                         horizontal: 16.0,
  //                       ),
  //                       child: TextField(
  //                         controller: _uom,
  //                         keyboardType: TextInputType.text,
  //                         decoration: InputDecoration(
  //                           hintText: "UOM",
  //                           hintStyle: TextStyle(
  //                             fontWeight: FontWeight.w800,
  //                             color: Colors.black54,
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               Flex(
  //                 direction: Axis.horizontal,
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 mainAxisSize: MainAxisSize.max,
  //                 children: <Widget>[
  //                   Container(
  //                     width: (MediaQuery.of(context).size.width) * 0.5,
  //                     child: Padding(
  //                       padding: const EdgeInsets.symmetric(
  //                         horizontal: 16.0,
  //                         vertical: 8.0,
  //                       ),
  //                       child: TextField(
  //                         controller: _bPrice,
  //                         keyboardType:
  //                             TextInputType.numberWithOptions(decimal: true),
  //                         decoration: InputDecoration(
  //                           hintText: "Buying Price",
  //                           hintStyle: TextStyle(
  //                             fontWeight: FontWeight.w800,
  //                             color: Colors.black54,
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                   Container(
  //                     width: (MediaQuery.of(context).size.width) * 0.5,
  //                     child: Padding(
  //                       padding: const EdgeInsets.symmetric(
  //                         horizontal: 16.0,
  //                         vertical: 8.0,
  //                       ),
  //                       child: TextField(
  //                         controller: _sPrice,
  //                         keyboardType:
  //                             TextInputType.numberWithOptions(decimal: true),
  //                         decoration: InputDecoration(
  //                           hintText: "Selling Price",
  //                           hintStyle: TextStyle(
  //                             fontWeight: FontWeight.w800,
  //                             color: Colors.black54,
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   )
  //                 ],
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(
  //                   top: 8.0,
  //                   bottom: 8.0,
  //                   left: 16.0,
  //                 ),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: <Widget>[
  //                     Icon(
  //                       Icons.add_circle,
  //                       color: Theme.of(context).primaryColor,
  //                     ),
  //                     ButtonBar(
  //                       children: <Widget>[
  //                         FlatButton(
  //                           child: Text("Cancel"),
  //                           onPressed: () {
  //                             Navigator.pop(context);
  //                             _nameController.clear();
  //                             _uom.clear();
  //                             _sPrice.clear();
  //                             _bPrice.clear();
  //                           },
  //                         ),
  //                         FlatButton(
  //                           child: Text(
  //                             "Save",
  //                             style: TextStyle(
  //                               color: Theme.of(context).primaryColor,
  //                             ),
  //                           ),
  //                           onPressed: () {
  //                             if (_nameController.text.isNotEmpty &&
  //                                 _sPrice.text.isNotEmpty &&
  //                                 _bPrice.text.isNotEmpty &&
  //                                 _uom.text.isNotEmpty) {
  //                               dbService
  //                                   .editProduct(
  //                                 Product(
  //                                   name: _nameController.text,
  //                                   uom: _uom.text,
  //                                   sellingPrice: double.parse(_sPrice.text),
  //                                   buyingPrice: double.parse(_bPrice.text),
  //                                   productid: product.productid,
  //                                 ),
  //                               )
  //                                   .then((_) {
  //                                 Navigator.pop(context);
  //                                 _nameController.clear();
  //                                 _uom.clear();
  //                                 _sPrice.clear();
  //                                 _bPrice.clear();
  //                               }).catchError((error) {
  //                                 if (error.toString().contains("NOINTERNET")) {
  //                                   Flushbar(
  //                                     title: "Hey There",
  //                                     message:
  //                                         "You don't seem to have an active internet connection",
  //                                     duration: Duration(seconds: 4),
  //                                   )..show(context);
  //                                 } else {
  //                                   print(error);
  //                                   Flushbar(
  //                                     title: "Hey There",
  //                                     message:
  //                                         "There seems to be a problem. Please try again later.",
  //                                     duration: Duration(seconds: 4),
  //                                   )..show(context);
  //                                 }
  //                               });
  //                             }
  //                           },
  //                         )
  //                       ],
  //                     )
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  // void _addProduct(BuildContext context) {
  //   showModalBottomSheetApp(
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return Container(
  //           color: Color(0xFF737373),
  //           child: Container(
  //             decoration: new BoxDecoration(
  //               color: Colors.white,
  //               borderRadius: new BorderRadius.only(
  //                 topLeft: const Radius.circular(10.0),
  //                 topRight: const Radius.circular(10.0),
  //               ),
  //             ),
  //             child: Wrap(
  //               children: <Widget>[
  //                 Flex(
  //                   direction: Axis.horizontal,
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   mainAxisSize: MainAxisSize.max,
  //                   children: <Widget>[
  //                     Container(
  //                       width: (MediaQuery.of(context).size.width) * 0.5,
  //                       child: Padding(
  //                         padding: const EdgeInsets.symmetric(
  //                           vertical: 8.0,
  //                           horizontal: 16.0,
  //                         ),
  //                         child: TextField(
  //                           controller: _nameController,
  //                           autofocus: true,
  //                           keyboardType: TextInputType.text,
  //                           decoration: InputDecoration(
  //                             hintText: "Product Name",
  //                             hintStyle: TextStyle(
  //                               fontWeight: FontWeight.w800,
  //                               color: Colors.black54,
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     Container(
  //                       width: (MediaQuery.of(context).size.width) * 0.5,
  //                       child: Padding(
  //                         padding: const EdgeInsets.symmetric(
  //                           vertical: 8.0,
  //                           horizontal: 16.0,
  //                         ),
  //                         child: TextField(
  //                           controller: _uom,
  //                           keyboardType: TextInputType.text,
  //                           decoration: InputDecoration(
  //                             hintText: "UOM",
  //                             hintStyle: TextStyle(
  //                               fontWeight: FontWeight.w800,
  //                               color: Colors.black54,
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //                 Flex(
  //                   direction: Axis.horizontal,
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   mainAxisSize: MainAxisSize.max,
  //                   children: <Widget>[
  //                     Container(
  //                       width: (MediaQuery.of(context).size.width) * 0.5,
  //                       child: Padding(
  //                         padding: const EdgeInsets.symmetric(
  //                           horizontal: 16.0,
  //                           vertical: 8.0,
  //                         ),
  //                         child: TextField(
  //                           controller: _bPrice,
  //                           keyboardType:
  //                               TextInputType.numberWithOptions(decimal: true),
  //                           decoration: InputDecoration(
  //                             hintText: "Buying Price",
  //                             hintStyle: TextStyle(
  //                               fontWeight: FontWeight.w800,
  //                               color: Colors.black54,
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     Container(
  //                       width: (MediaQuery.of(context).size.width) * 0.5,
  //                       child: Padding(
  //                         padding: const EdgeInsets.symmetric(
  //                           horizontal: 16.0,
  //                           vertical: 8.0,
  //                         ),
  //                         child: TextField(
  //                           controller: _sPrice,
  //                           keyboardType:
  //                               TextInputType.numberWithOptions(decimal: true),
  //                           decoration: InputDecoration(
  //                             hintText: "Selling Price",
  //                             hintStyle: TextStyle(
  //                               fontWeight: FontWeight.w800,
  //                               color: Colors.black54,
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     )
  //                   ],
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.only(
  //                     top: 8.0,
  //                     bottom: 8.0,
  //                     left: 16.0,
  //                   ),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: <Widget>[
  //                       Icon(
  //                         Icons.add_circle,
  //                         color: Theme.of(context).primaryColor,
  //                       ),
  //                       ButtonBar(
  //                         children: <Widget>[
  //                           FlatButton(
  //                             child: Text("Cancel"),
  //                             onPressed: () {
  //                               Navigator.pop(context);
  //                               _nameController.clear();
  //                               _uom.clear();
  //                               _sPrice.clear();
  //                               _bPrice.clear();
  //                             },
  //                           ),
  //                           FlatButton(
  //                             child: Text(
  //                               "Save",
  //                               style: TextStyle(
  //                                 color: Theme.of(context).primaryColor,
  //                               ),
  //                             ),
  //                             onPressed: () {
  //                               if (_nameController.text.isNotEmpty &&
  //                                   _sPrice.text.isNotEmpty &&
  //                                   _bPrice.text.isNotEmpty &&
  //                                   _uom.text.isNotEmpty) {
  //                                 dbService
  //                                     .addProduct(
  //                                   Product(
  //                                     name: _nameController.text,
  //                                     uom: _uom.text,
  //                                     sellingPrice: double.parse(_sPrice.text),
  //                                     buyingPrice: double.parse(_bPrice.text),
  //                                   ),
  //                                 )
  //                                     .then((_) {
  //                                   Navigator.pop(context);
  //                                   _nameController.clear();
  //                                   _uom.clear();
  //                                   _sPrice.clear();
  //                                   _bPrice.clear();
  //                                 }).catchError((error) {
  //                                   if (error
  //                                       .toString()
  //                                       .contains("NOINTERNET")) {
  //                                     Flushbar(
  //                                       title: "Hey There",
  //                                       message:
  //                                           "You don't seem to have an active internet connection",
  //                                       duration: Duration(seconds: 4),
  //                                     )..show(context);
  //                                   } else {
  //                                     print(error);
  //                                     Flushbar(
  //                                       title: "Hey There",
  //                                       message:
  //                                           "There seems to be a problem. Please try again later.",
  //                                       duration: Duration(seconds: 4),
  //                                     )..show(context);
  //                                   }
  //                                 });
  //                               }
  //                             },
  //                           )
  //                         ],
  //                       )
  //                     ],
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }
}
