import 'package:flutter/material.dart';
import 'package:flutter_medical_management_project/blocks/auth_block.dart';
import 'package:provider/provider.dart';

class PharmacistHome extends StatefulWidget {
  @override
  _PharmacistHome createState() => _PharmacistHome();
}

class _PharmacistHome extends State<PharmacistHome> {
  @override
  Widget build(BuildContext context) {
    AuthBlock auth = Provider.of<AuthBlock>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Welcome pharmacist"),
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
                title: Text('Xem doctor order'),
                onTap: () {
                  Navigator.pushNamed(context, '/pharmacist_order');
                },
              ),
              ListTile(
                leading: Icon(Icons.home,
                    color: Theme.of(context).colorScheme.secondary),
                title: Text('Xem inventory'),
                onTap: () {
                  Navigator.pushNamed(context, '/pharmacist_inventory');
                },
              ),
              ListTile(
                leading: Icon(Icons.home,
                    color: Theme.of(context).colorScheme.secondary),
                title: Text('Nhập thêm thuốc'),
                onTap: () {
                  Navigator.pushNamed(context, '/pharmacist_adding_drug');
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
                  auth.logout().then((value) {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/');
                  });
                },
              ),
            ]),
      ),
    );
  }
}
