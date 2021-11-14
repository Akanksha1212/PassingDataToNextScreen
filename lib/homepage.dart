import 'package:flutter/material.dart';

import 'fruitDetail.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<FruitDataModel> Fruitdata = [
    FruitDataModel(
        'mango',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Hapus_Mango.jpg/220px-Hapus_Mango.jpg',
        'mango is best'),
    FruitDataModel(
        'banana',
        'https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg',
        'banana is okayish'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pass Data from ListView to next Screen'),
        ),
        body: ListView.builder(
            itemCount: Fruitdata.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(Fruitdata[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(Fruitdata[index].ImageUrl),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FruitDetail(
                              fruitDataModel: Fruitdata[index],
                            )));
                  },
                ),
              );
            }));
  }
}
