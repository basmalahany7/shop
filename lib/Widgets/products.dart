import 'package:flutter/material.dart';

class Productwidget extends StatelessWidget {
  Productwidget({required this.image,required this.name,required this.description,super.key});
  String image;
  String name;
  String description;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: 40,
          ),
          SizedBox(height: 15,),
          Text(name),
          SizedBox(height: 10,),
          Text(description),
        ],
      ),
    );

  }
}