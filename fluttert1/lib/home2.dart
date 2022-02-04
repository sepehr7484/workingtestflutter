import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  Future<int> futuerdata = Future.delayed(Duration(seconds: 5), () => 5);
  Future futuerErorr =
      Future.delayed(Duration(seconds: 3), () => ('Sample Error'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [fut()],
      ),
    ));
  }

  Widget fut() {
    return FutureBuilder(
        future: futuerdata,
        builder: (BuildContext context, AsyncSnapshot<int> snpshot) {
          Widget fututerchild;
          if (snpshot.hasData) {
            fututerchild = Text('Success');
          } else if (snpshot.hasError) {
            fututerchild = Text('ERROR');
          } else {
            fututerchild = CircularProgressIndicator(
              backgroundColor: Colors.amber,
              color: Colors.blue,
            );
          }
          return Center(
            child: fututerchild,
          );
        });
  }
}
