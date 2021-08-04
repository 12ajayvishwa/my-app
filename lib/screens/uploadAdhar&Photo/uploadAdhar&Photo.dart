import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jb/constants/color.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import 'dart:io';

class UploadAdharAndPhoto extends StatefulWidget {
  @override
  _UploadAdharAndPhotoState createState() => _UploadAdharAndPhotoState();
}

class _UploadAdharAndPhotoState extends State<UploadAdharAndPhoto> {
  static final String uploadEndPoint =
      'http://localhost/flutter_test/upload_image.php';
  Future<File> file;
  String status = '';
  String base64Image;
  File tmpFile;
  String errMessage = 'Error Uploading Image';

  chooseImage() {
    setState(() {
      file = ImagePicker.pickImage(source: ImageSource.gallery);
    });
    setStatus('');
  }
  setStatus(String message) {
    setState(() {
      status = message;
    });
  }
  startUpload() {
    setStatus("Uploading Image...");
    if (null == tmpFile) {
      setStatus(errMessage);
      return;
    }
    String fileName = tmpFile.path.split('/').last;
    upload(fileName);
  }
  upload(String fileName) {
    http.post(uploadEndPoint, body: {
      "image": base64Image,
      "name" :fileName
    }).then((result){
      setStatus(result.statusCode == 200 ? result.body : errMessage);
    }).catchError((error) {
      setStatus(error);
    });
  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: file,
        builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
        null != snapshot.data){
          tmpFile = snapshot.data;
          base64Image = base64Encode(snapshot.data.readAsBytesSync());
          return Flexible(
              child: Image.file(
                snapshot.data,
                fit: BoxFit.fill,
              ),
          );
        } else if (null != snapshot.error) {
          return const Text('Error Picking Image',);
        } else {
          return const Text('No Image Selected',textAlign: TextAlign.center,);
        }
        }
        );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset('image/jainbandhan.png',fit: BoxFit.fill,)],
          ),
          actions: [
            TextButton(
                onPressed: null,
                child: Text("Login",
                  style: TextStyle(fontSize: 15,color: jbColor),))
          ],
          backgroundColor: jbColor,
          centerTitle: true,
          elevation: 2,
        ),
        body: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(30.0),
              elevation: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  OutlineButton(
                    onPressed: chooseImage,
                    child: Text('Chose your picture'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  showImage(),
                  SizedBox(
                    height: 20.0,
                  ),
                  OutlineButton(
                    onPressed: startUpload,
                    child: Text('Upload Image'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    status,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(30.0),
              elevation: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  OutlineButton(
                    onPressed: chooseImage,
                    child: Text('Chose your Adhar picture'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  showImage(),
                  SizedBox(
                    height: 20.0,
                  ),
                  OutlineButton(
                    onPressed: startUpload,
                    child: Text('Upload Image'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    status,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: RaisedButton(
                color: jbColor,
                child: Text('Save',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                onPressed: () {
                },
              ),
            )
          ],
        ),
    );
  }
}
