import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_medical_management_project/auth/auth.dart';
import 'package:flutter_medical_management_project/blocks/auth_block.dart';
import 'package:flutter_medical_management_project/cart.dart';
import 'package:flutter_medical_management_project/categorise.dart';
import 'package:flutter_medical_management_project/home/home.dart';
import 'package:flutter_medical_management_project/localizations.dart';
import 'package:flutter_medical_management_project/product_detail.dart';
import 'package:flutter_medical_management_project/settings.dart';
import 'package:flutter_medical_management_project/shop/shop.dart';
import 'package:flutter_medical_management_project/search_page/search_page.dart';
import 'package:flutter_medical_management_project/wishlist.dart';
import 'package:flutter_medical_management_project/doctor/home/doctor_home.dart';
import 'package:flutter_medical_management_project/doctor/order/doctor_order.dart';
import 'package:flutter_medical_management_project/doctor/order/order_items.dart';
import 'package:flutter_medical_management_project/pharmacist/home/pharmacist_home.dart';
import 'package:flutter_medical_management_project/pharmacist/order/pharmacist_order.dart';
import 'package:flutter_medical_management_project/pharmacist/inventory/pharmacist_inventory.dart';
import 'package:flutter_medical_management_project/pharmacist/adding_drug/adding_drug.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final Locale locale = Locale('en');
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider<AuthBlock>.value(value: AuthBlock())],
    child: MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('en'), Locale('ar')],
      locale: locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrange.shade500,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.lightBlue.shade900),
        fontFamily: locale.languageCode == 'ar' ? 'Dubai' : 'Lato',
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Home(),
        '/auth': (BuildContext context) => Auth(),
        '/shop': (BuildContext context) => Shop(),
        '/categorise': (BuildContext context) => Categorise(),
        '/wishlist': (BuildContext context) => WishList(),
        '/cart': (BuildContext context) => CartList(),
        '/settings': (BuildContext context) => Settings(),
        '/products': (BuildContext context) => Products(),
        '/searchpage': (BuildContext context) => SearchPage(),
        '/doctor_home': (BuildContext context) => DoctorHome(),
        '/doctor_order': (BuildContext context) => DoctorOrder(),
        '/doctor_order_items': (BuildContext context) => OrderItems(),
        '/pharmacist_home': (BuildContext context) => PharmacistHome(),
        '/pharmacist_order': (BuildContext context) => PharmacistOrder(),
        '/pharmacist_inventory': (BuildContext context) =>
            PharmacistInventory(),
        '/pharmacist_adding_drug': (BuildContext context) => AddingDrug(),
      },
    ),
  ));
}
