import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_medical_management_project/models/inventory.dart';
import 'package:flutter_medical_management_project/services/inventory_service.dart';

import 'drawer.dart';
import 'slider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      drawer: Drawer(
        child: AppDrawer(),
      ),
      body: SafeArea(
        top: false,
        left: false,
        right: false,
        child: CustomScrollView(
            // Add the app bar and list of items as slivers in the next steps.
            slivers: <Widget>[
              SliverAppBar(
                // Provide a standard title.
                // title: Text('asdas'),
                pinned: true,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {},
                  )
                ],
                // Allows the user to reveal the app bar if they begin scrolling
                // back up the list of items.
                // floating: true,
                // Display a placeholder widget to visualize the shrinking size.
                flexibleSpace: HomeSlider(),
                // Make the initial height of the SliverAppBar larger than normal.
                expandedHeight: 200,
              ),
              SliverList(
                // Use a delegate to build items as they're scrolled on screen.
                delegate: SliverChildBuilderDelegate(
                  // The builder function returns a ListTile with a title that
                  // displays the index of the current item.
                  (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.only(top: 14.0, left: 8.0, right: 8.0),
                        child: Hero(
                          tag: "search",
                          child: Material(
                            type: MaterialType.transparency,
                            child: TextField(
                              readOnly: true,
                              onTap: () =>
                                  {Navigator.pushNamed(context, '/searchpage')},
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: "Search products",
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding:
                      //       EdgeInsets.only(top: 14.0, left: 8.0, right: 8.0),
                      //   child: Text('Các sản phẩm mới',
                      //       style: TextStyle(
                      //           color: Theme.of(context).colorScheme.secondary,
                      //           fontSize: 18,
                      //           fontWeight: FontWeight.w700)),
                      // ),
                      // Container(
                      //   margin: EdgeInsets.symmetric(vertical: 8.0),
                      //   height: 240.0,
                      //   child: ListView(
                      //     scrollDirection: Axis.horizontal,
                      //     children: imgList.map((i) {
                      //       return Builder(
                      //         builder: (BuildContext context) {
                      //           return Container(
                      //             width: 140.0,
                      //             child: Card(
                      //               clipBehavior: Clip.antiAlias,
                      //               child: InkWell(
                      //                 onTap: () {
                      //                   Navigator.pushNamed(
                      //                       context, '/products',
                      //                       arguments: i);
                      //                 },
                      //                 child: Column(
                      //                   crossAxisAlignment:
                      //                       CrossAxisAlignment.start,
                      //                   children: <Widget>[
                      //                     SizedBox(
                      //                       height: 160,
                      //                       child: Hero(
                      //                         tag: '$i',
                      //                         child: CachedNetworkImage(
                      //                           fit: BoxFit.cover,
                      //                           imageUrl: i,
                      //                           placeholder: (context, url) =>
                      //                               Center(
                      //                                   child:
                      //                                       CircularProgressIndicator()),
                      //                           errorWidget:
                      //                               (context, url, error) =>
                      //                                   new Icon(Icons.error),
                      //                         ),
                      //                       ),
                      //                     ),
                      //                     ListTile(
                      //                       title: Text(
                      //                         'Two Gold Rings',
                      //                         style: TextStyle(fontSize: 14),
                      //                       ),
                      //                       subtitle: Text('\$200',
                      //                           style: TextStyle(
                      //                               color: Theme.of(context)
                      //                                   .colorScheme
                      //                                   .secondary,
                      //                               fontWeight:
                      //                                   FontWeight.w700)),
                      //                     )
                      //                   ],
                      //                 ),
                      //               ),
                      //             ),
                      //           );
                      //         },
                      //       );
                      //     }).toList(),
                      //   ),
                      // ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: 8.0, left: 8.0, right: 8.0),
                            child: Text('Tất cả các sản phẩm',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ],
                      ),
                      Container(
                        child: GridView.count(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          padding: EdgeInsets.only(
                              top: 8, left: 6, right: 6, bottom: 12),
                          children: inventorys.map((inventory) {
                            return Container(
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                child: InkWell(
                                  onTap: () {
                                    print('Card tapped.');
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height:
                                            (MediaQuery.of(context).size.width /
                                                    2) -
                                                70,
                                        width: double.infinity,
                                        child: CachedNetworkImage(
                                          fit: BoxFit.cover,
                                          imageUrl: inventory.imagePath!,
                                          placeholder: (context, url) => Center(
                                              child:
                                                  CircularProgressIndicator()),
                                          errorWidget: (context, url, error) =>
                                              new Icon(Icons.error),
                                        ),
                                      ),
                                      ListTile(
                                          title: Text(
                                        inventory.name!,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                  // Builds 1000 ListTiles
                  childCount: 1,
                ),
              )
            ]),
      ),
    );
  }
}
