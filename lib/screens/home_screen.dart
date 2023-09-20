import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker")),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                _pickImageFromGallery();
              },
               child: const Text("Select image from Gallery"),),
               SizedBox(height: 20,),
               ElevatedButton(onPressed: (){
                _pickImageFromCamera();
               },
                child: const Text("Pick Image from camera"))
      
            ],
          ),
        ),
      ),
    );
  }
  Future _pickImageFromGallery() async{
await ImagePicker().pickImage(source: ImageSource.gallery);

  }
   Future _pickImageFromCamera() async{
 final returnedImage =  await ImagePicker().pickImage(source: ImageSource.camera);
  }
}