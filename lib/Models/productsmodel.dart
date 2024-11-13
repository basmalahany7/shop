class productmodel
{
  List<dynamic>data;
  productmodel({required this.data});
  factory productmodel.Fromjson(Map<String,dynamic>json)
  {
    return productmodel(data: json["data"]["products"]);
  }
}