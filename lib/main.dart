import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:software_engineering_app/options.dart';
import 'home.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(

  apiKey: 'AIzaSyD5un4evgPU8buG87rm4c5Ymo8jAGu3LME',
  appId: '1:315489384045:android:584fedc200c2a9cd257164',
  messagingSenderId: '315489384045',
  projectId: 'librarymanag-1f883',
  storageBucket: 'librarymanag-1f883.appspot.com',
      ),
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return MaterialApp(

    debugShowCheckedModeBanner: false,
    home: Options(),


  );
}
}

