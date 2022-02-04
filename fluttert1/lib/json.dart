import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Jsons extends StatefulWidget {
  Jsons({Key? key}) : super(key: key);

  @override
  _JsonsState createState() => _JsonsState();
}

class _JsonsState extends State<Jsons> {
  final listdata = bookData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: listdata == null ? 0 : listdata.length,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.all(10),
                color: Colors.blue,
                child: ListTile(
                  onTap: () {
                    print(listdata[index]['img']);
                    setState(() {});
                  },
                  leading: Text(listdata[index]['title']),
                  subtitle: Text(listdata[index]['Name']),
                ));
          }),
    );
  }
}

List bookData() {
  return [
    {'title': 'InfoAnimal', 'Name': 'Ahoo', 'img': 'asset/k1.jpg'},
    {'title': 'InfoAnimals', 'Name': 'Ahoo2', 'img': 'asset/k1.jpg'}
  ];
}
