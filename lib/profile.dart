
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Myprofile extends StatefulWidget {

  @override
  _MyprofileState createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  File? imagefile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: TextButton(onPressed: ()
    {
      showDialog(
          context: context,
          builder: (context) {
            return Dialog(
                child: Container(
                  height: 150,
                  child: Column(
                    children: [
                      TextButton(onPressed: () {
                        _getgetFromcamera();
                      },
                          child: Text('Camera')),
                      TextButton(onPressed: () {
                        _getFromGallery();
                      },
                          child: Text('Gallery')),
                    ],
                  ),
                )
            );
          }
      );
  }, child: Text('choose image'),
    )
      )
    );
  }
    _getgetFromcamera()async{
      PickedFile? pickedFile = await ImagePicker().getImage(
        source: ImageSource.camera,
        maxWidth: 300,
        maxHeight: 300,
      );
      if (pickedFile != null) {
        setState(() {
          imagefile = File(pickedFile.path);
        });
      }
    }

  _getFromGallery() async{
    PickedFile ? pickedFile=await ImagePicker().getImage(
    source: ImageSource.gallery,
    maxWidth:300,
    maxHeight: 300,
    );
    if (pickedFile!= null){
    setState(() {
    imagefile=File(pickedFile.path);
    });
    }
  }
  Widget displaySignatureFile(){
    return new SizedBox(
      height: 400,
      width: 400,
      child: imagefile==null
      ? new Icon(Icons.camera_alt,size:100,) :
      ClipRRect(
        borderRadius: BorderRadius.circular(150),
        child:  Image.file(imagefile!,fit: BoxFit.cover,),


      )
    );
  }
}
