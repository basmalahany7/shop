import 'package:ecommerce/Screens/productdetails.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/productprovider.dart';
import '../Widgets/products.dart';

class Productscreen extends StatelessWidget {
  const Productscreen({super.key});
//basmala
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("products"),
      ),
      body: Consumer<productprovider>(builder: (context, value, child) {
        if(value.products==null)
        {
          value.getall();
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else
        {
          return GridView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: value.products?.data.length,
              itemBuilder:(context, index) {
                return GestureDetector(
                  child: Productwidget(image: value.products?.data[index]["image"], name: value.products?.data[index]["name"], description: value.products?.data[index]["description"]),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => Productdetails(name:value.products?.data[index]["name"] , image: value.products?.data[index]["image"], description: value.products?.data[index]["description"]),));
                  },
                );
              } ,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10)
          );
        }
      },),
    );
  }
}