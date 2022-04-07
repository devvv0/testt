import 'package:flutter/material.dart';

import 'FruitDataModel.dart';
import 'FruitDetail.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {

  static List<String> fruitname =['Apple','Banana','Mango','Orange','pineapple'];
  static List url = ['https://www.applesfromny.com/wp-content/uploads/2020/05/Jonagold_NYAS-Apples2.png',
    'https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Hapus_Mango.jpg/220px-Hapus_Mango.jpg',
    'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg',
    'https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg'];
  final List<FruitDataModel> Fruitdata = List.generate(
      fruitname.length,
          (index)
      => FruitDataModel('${fruitname[index]}', '${url[index]}','${fruitname[index]} Description...'));


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child:  ListView.builder(
          itemCount: Fruitdata.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                title: Text(Fruitdata[index].name),
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network(Fruitdata[index].ImageUrl),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FruitDetail(fruitDataModel: Fruitdata[index],)));
                },
              ),
            );
          }
      )
    );
  }
}
