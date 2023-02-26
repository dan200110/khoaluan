import 'package:flutter/material.dart';

class PharmacistInventory extends StatefulWidget {
  @override
  _PharmacistInventory createState() => _PharmacistInventory();
}

class _PharmacistInventory extends State<PharmacistInventory> {
  final List<Map<dynamic, dynamic>> products = [
    {
      'name': 'IPhone',
      'rating': 3,
      'image':
          'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'
    },
    {
      'name': 'IPhone X 2',
      'rating': 3,
      'image':
          'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80'
    },
    {
      'name': 'IPhone 11',
      'rating': 4,
      'image':
          'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'
    },
    {
      'name': 'IPhone 11',
      'rating': 4,
      'image':
          'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'
    },
    {
      'name': 'IPhone 11',
      'rating': 4,
      'image':
          'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'
    },
    {
      'name': 'IPhone 11',
      'rating': 4,
      'image':
          'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'
    },
    {
      'name': 'IPhone 11',
      'rating': 4,
      'image':
          'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'
    },
    {
      'name': 'IPhone 11',
      'rating': 4,
      'image':
          'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'
    },
    {
      'name': 'IPhone 11',
      'rating': 4,
      'image':
          'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'
    },
    {
      'name': 'IPhone 12',
      'rating': 5,
      'image':
          'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80'
    },
    {
      'name': 'IPhone 12',
      'rating': 5,
      'image':
          'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80'
    },
    {
      'name': 'IPhone 12',
      'rating': 5,
      'image':
          'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80'
    },
    {
      'name': 'IPhone 12',
      'rating': 5,
      'image':
          'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80'
    },
    {
      'name': 'IPhone 12',
      'rating': 5,
      'image':
          'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80'
    },
    {
      'name': 'IPhone 12',
      'rating': 5,
      'image':
          'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80'
    },
  ];

  final _nameController = TextEditingController();
  final _uom = TextEditingController();
  final _sPrice = TextEditingController();
  final _bPrice = TextEditingController();

  @override
  void initState() {
    // products = [];
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _uom.dispose();
    _sPrice.dispose();
    _bPrice.dispose();
    super.dispose();
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
                          label: Text("ID"),
                          numeric: false,
                        ),
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
                          label: Text("Required permission"),
                          numeric: false,
                        ),
                        // DataColumn(
                        //   label: Text("Selling Price"),
                        //   numeric: true,
                        //   tooltip: "This is the product's Selling Price",
                        // ),
                        // DataColumn(
                        //     label: Text("Profit"),
                        //     numeric: true,
                        //     tooltip: "This is the Profit margin"),
                      ],
                      rows: products
                          .map(
                            (product) => DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    product["rating"].toString(),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    product["rating"].toString(),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    product["name"],
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    product["rating"].toString(),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    product["rating"].toString(),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    product["name"],
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    product["name"],
                                  ),
                                ),
                                // DataCell(
                                //   Text(
                                //     product.sellingPrice.toString(),
                                //   ),
                                // ),
                                // DataCell(
                                //   Text(
                                //     (product.sellingPrice -
                                //             product.buyingPrice)
                                //         .toString(),
                                //   ),
                                // ),
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
