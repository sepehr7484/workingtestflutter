import 'package:flutter/material.dart';

class Responsives extends StatefulWidget {
  Responsives({Key? key}) : super(key: key);

  @override
  _ResponsivesState createState() => _ResponsivesState();
}

class _ResponsivesState extends State<Responsives> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset('asset/k1.jpg'),
                  flex: 4,
                ),
                Expanded(
                  child: Image.asset('asset/k1.jpg'),
                  flex: 4,
                )
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Image.asset('asset/k1.jpg'),
                  flex: 4,
                  fit: FlexFit.tight,
                ),
                Flexible(
                  child: Image.asset('asset/k1.jpg'),
                  flex: 4,
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
