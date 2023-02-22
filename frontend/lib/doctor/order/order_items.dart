import 'package:flutter/material.dart';

class OrderItems extends StatefulWidget {
  @override
  _OrderItems createState() => _OrderItems();
}

class _OrderItems extends State<OrderItems> {
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
        title: Text("Drug order of"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              print('tap');
            },
          )
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: products.length,
              itemBuilder: (BuildContext bc, index) => Card(
                child: ListTile(
                  leading: Text((index + 1).toString()),
                  title: Text(products.elementAt(index)["name"]),
                ),
              ),
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
