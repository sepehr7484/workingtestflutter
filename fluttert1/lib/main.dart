import 'package:flutter/material.dart';
import 'package:fluttert1/camera.dart';
import 'package:fluttert1/grid.dart';
import 'package:fluttert1/json.dart';
import 'package:fluttert1/players.dart';
import 'package:fluttert1/responsive.dart';
import 'home.dart';
import 'home2.dart';

void main() {
  return runApp(MaterialApp(
    title: 'FlutterT1',
    home: Player(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
  ));
}
