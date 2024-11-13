import 'package:dio/dio.dart';

import '../Models/productsmodel.dart';

class productservices
{
  static Dio dio=Dio();
  static Future<productmodel>getproducts()async
  {
    try
    {
      Response response=await dio.get("https://student.valuxapps.com/api/home");
      if(response.statusCode==200)
      {
        return productmodel.Fromjson(response.data);
      }
      else
      {
        throw Exception("Can't fetch data");
      }
    }
    catch(e)
    {
      print(e);
      throw Exception("Can't Fetch data");
    }
  }
}