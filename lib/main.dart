import 'package:ccast/provider/carsoalslider.dart';
import 'package:ccast/provider/lang_%20provider.dart';
import 'package:ccast/provider/media_provider.dart';
import 'package:ccast/provider/starrating_provider.dart';
import 'package:ccast/provider/tab_provider.dart';
import 'package:ccast/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      child: MyApp(),
      providers: [
        ChangeNotifierProvider(
          create: (context) => TabIndexProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => MediaProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => StarRatingProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CarouselProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LanguageProvider(),
        )
      ],
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
