import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:kamera_filter_carousel/widget/takepicture_screen.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Filter Camera',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TakePictureScreen(camera: cameras.first),
      debugShowCheckedModeBanner: false,
    );
  }
}
