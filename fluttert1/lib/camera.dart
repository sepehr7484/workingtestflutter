import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

File? imagefile;

class Cameras extends StatefulWidget {
  const Cameras({Key? key}) : super(key: key);

  @override
  _CamerasState createState() => _CamerasState();
}

class _CamerasState extends State<Cameras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imagefile != null) image1() else ghab(),
              const Divider(
                thickness: 5.0,
                color: Colors.black45,
                indent: 100.0,
                endIndent: 100.0,
              ),
              btn()
            ],
          ),
        ),
      )),
    );
  }

  btn() {
    return Padding(
      padding: EdgeInsetsDirectional.all(10),
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: ElevatedButton(
                onPressed: () => getImage(source: ImageSource.camera),
                child: const Text('Capture'),
              )),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              flex: 4,
              child: ElevatedButton(
                  onPressed: () => getImage(source: ImageSource.gallery),
                  child: const Text('Select Image'))),
        ],
      ),
    );
  }

  getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(
      source: source,
      maxHeight: 400,
      maxWidth: 350,
      imageQuality: 100,
    );
    if (file?.path != null) {
      setState(() {
        imagefile = File(file!.path);
      });
    }
  }
}

image1() {
  return Container(
    width: 350,
    height: 400,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: Colors.amber),
        color: Colors.grey,
        image: DecorationImage(
          image: FileImage(imagefile!),
          fit: BoxFit.fill,
        )),
  );
}

ghab() {
  return Container(
    width: 350,
    height: 400,
    decoration: dec(),
  );
}

dec() {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.blue.shade100,
      border: Border.all(width: 2, color: Colors.amber));
}
