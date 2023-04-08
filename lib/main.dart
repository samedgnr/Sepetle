import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/firebase_configurations.dart';
import 'package:shop_app/pages/start_page/main_page.dart';
import 'model/cart_model.dart';
import 'package:flutter/foundation.dart';

final FirebaseConfiguratinons _configuratinons = FirebaseConfiguratinons();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
      apiKey: _configuratinons.apiKey,
      appId: _configuratinons.appId,
      messagingSenderId: _configuratinons.messagingSenderId,
      projectId: _configuratinons.projectId,
    ));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
