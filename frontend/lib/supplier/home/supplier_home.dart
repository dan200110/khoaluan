import 'package:flutter/material.dart';

class SupplierHome extends StatefulWidget {
  @override
  _SupplierHome createState() => _SupplierHome();
}

class _SupplierHome extends State<SupplierHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Welcome supplier"),
      ),
      body: SafeArea(
        top: false,
        left: false,
        right: false,
        child: ListView(
            // Add the app bar and list of items as slivers in the next steps.
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.home,
                    color: Theme.of(context).colorScheme.secondary),
                title: Text('Xem supplier drug order'),
                onTap: () {
                  Navigator.pushNamed(context, '/supplier_order');
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings,
                    color: Theme.of(context).colorScheme.secondary),
                title: Text('Settings'),
                onTap: () {
                  // Navigator.pop(context);
                  Navigator.pushNamed(context, '/settings');
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app,
                    color: Theme.of(context).colorScheme.secondary),
                title: Text('Logout'),
                onTap: () async {
                  // await auth.logout();
                },
              ),
            ]),
      ),
    );
  }
}
