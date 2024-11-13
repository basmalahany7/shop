import 'package:ecommerce/Providers/Authonticationprovider.dart';
import 'package:ecommerce/Providers/productprovider.dart';
import 'package:ecommerce/Screens/productshome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/Login.dart';
import 'Screens/SignUp.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => AuthProvider(),),
      ChangeNotifierProvider(create: (context) =>productprovider(),)
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
      ),
    );
  }
}
