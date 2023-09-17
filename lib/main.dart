import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

import 'app/feature/controllers/ad_controller.dart';
import 'app/feature/controllers/establishment_controller.dart';
import 'app/feature/controllers/service_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app/feature/views/home/home_view.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => EstablishmentController(firestore)),
        ChangeNotifierProvider(create: (_) => ServiceController(firestore)),
      ],
      child: MaterialApp(
        title: 'Parent APP',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: Teste()
        home: HomeView(adController: AdController(firestore)),
        // home: CarouselDemo(),
      ),
    );
  }
}
