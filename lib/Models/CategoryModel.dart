
class  Categorymodel {
  String? imagePath;
  String? name;
   String? cat;
   String? price;
Categorymodel({required this.cat,this.imagePath,this.name,this.price});
Map<String ,dynamic>toMap()
{
  return{
    'imagePath':imagePath,
    'name':name,
    'cat':cat,
    'price':price
  };
}

Categorymodel.fromMap(Map<String ,dynamic>map)
{
  cat=map['cat'];
  price=map['price'];
  imagePath=map['imagePath'];
  name=map['name'];

}

}