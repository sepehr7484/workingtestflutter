import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSelect = true;
  final List<String> n = ['Dart', 'C#', 'C++', 'Java', 'Php', 'Pyton'];
  int indexx = 0;
  late String current;
  void upstr() {
    setState(() {
      current = n[indexx];
      indexx = indexx == (n.length - 1) ? 0 : indexx + 1;
      print(current);
    });
  }

  late TextEditingController txtctrl;
  String getuser = '';

  @override
  void dispose() {
    // TODO: implement dispose
    txtctrl.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    txtctrl = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Test1'),
        elevation: 10,
        shadowColor: Colors.amber,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              n[indexx],
              style: style(18.0, FontWeight.w900),
            ),
            // images1(),
            // tglbtn()
            txtedit(),
            Text('user:${getuser}'),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          upstr();
        },
        tooltip: 'Greentig',
      ),
    );
  }

  tglbtn() {
    return ToggleButtons(
      children: const [
        Icon(Icons.airplanemode_off),
        Icon(Icons.airplanemode_on),
      ],
      isSelected: [!isSelect, isSelect],
      onPressed: (index) {
        setState(() {
          isSelect = !isSelect;
        });
      },
    );
  }

  Widget images1() {
    return Container(
      width: 350,
      height: 300,
      child: isSelect == true
          ? Image.asset(
              'asset/k1.jpg',
            )
          : Text('NoImage'),
    );
  }

  txtedit() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 50,
      child: TextField(
        style: style(18.0, FontWeight.w500),
        controller: txtctrl,
        decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            )),
            label: Text('Enter Name.....')),
        autofocus: true,
        onSubmitted: (value) async {
          setState(() {
            getuser = value;
            txtctrl.clear();
            Future.delayed(Duration(seconds: 3));
          });
        },
      ),
    );
  }

  style(double fonts, FontWeight fw) {
    return TextStyle(
        fontWeight: fw,
        fontSize: fonts,
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)]);
  }
}
