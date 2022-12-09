import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:medica/NavBarActivity.dart';
import 'package:medica/Screens/AddManuallyScreen.dart/AddManuallyScreen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Medica',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const NavBarActivity(),
      );
    });
  }
}
