import 'package:flutter/material.dart';

import '../Models/productsmodel.dart';
import '../Services/productservices.dart';


class productprovider extends ChangeNotifier
{
  productmodel?products;

  Future<void>getall()async
  {
    products=await productservices.getproducts();
    notifyListeners();
  }
}