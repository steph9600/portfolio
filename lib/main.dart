import 'package:flutter/material.dart';
import 'package:portfoliosite/constants.dart';
import 'package:portfoliosite/provider/themeProvider.dart';
import 'package:portfoliosite/provider/themeStyles.dart';
import 'package:portfoliosite/sections/getInTouch/getInTouch.dart';
import 'package:portfoliosite/sections/mainSection.dart';
import 'package:portfoliosite/sections/serviceDetails/serviceDetails.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider _themeProvider = ThemeProvider();

  void getCurrentAppTheme() async {
    _themeProvider.lightTheme = await _themeProvider.darkThemePref.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Stephen',
        theme: ThemeStyles.themeData(_themeProvider.lightTheme, context),
        initialRoute: "/",
        routes: {
          "/": (context) => MainPage(),
          "/workTogether": (context) => GetInTouch(),
          "/details": (context) => ServiceDetails()
        },
      ),
    );
  }
}
