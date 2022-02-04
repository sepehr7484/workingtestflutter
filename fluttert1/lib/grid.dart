import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:math';

class Grids extends StatefulWidget {
  Grids({Key? key}) : super(key: key);

  @override
  _GridsState createState() => _GridsState();
}

class _GridsState extends State<Grids> {
  Future<int> futuerdata = Future.delayed(Duration(seconds: 5), () => 5);
  Future futuerErorr =
      Future.delayed(Duration(seconds: 3), () => ('Sample Error'));
  List<String> items = [
    'Dart',
    'C#',
    'C++',
    'Java',
    'Php',
    'Pyton',
    'Ruby',
    'C',
    'Pascal',
    'VB.Net'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GridView.builder(
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  childAspectRatio: 1.0),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 100,
                  decoration: dec(),
                  child: FutureBuilder(
                      future: futuerdata,
                      builder:
                          (BuildContext context, AsyncSnapshot<int> snpshot) {
                        Widget fututerchild;
                        if (snpshot.hasData) {
                          fututerchild = Text(
                            items[index],
                            style: TextStyle(
                                color: Colors.primaries[
                                    Random().nextInt(Colors.primaries.length)]),
                          );
                        } else if (snpshot.hasError) {
                          fututerchild = Text('ERROR');
                        } else {
                          fututerchild = const CircularProgressIndicator(
                            backgroundColor: Colors.amber,
                            color: Colors.blue,
                          );
                        }
                        return Center(
                          child: fututerchild,
                        );
                      }),
                );
              })),
    );
  }
}

dec() {
  return BoxDecoration(
    color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        width: 1),
  );
}
