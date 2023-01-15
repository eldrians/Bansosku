import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/landing_page/landing_page_screen.dart';
import 'package:bansosku/provider/penyalur.dart';
import 'package:bansosku/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: ((context) => Penyalur()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'BansosKu',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: MyColors.primaryBg,
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: MyColors.primaryText,
                ),
          ),
          onGenerateRoute: (settings) => generateRoute(settings),
          home: const LandingPage(),
        ));
  }
}
