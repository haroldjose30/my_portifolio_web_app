import 'package:flutter/material.dart';
import 'package:my_portifolio_web_app/presentation/pages/old/home_page_old.dart';

import 'presentation/pages/home_page.dart';
import 'presentation/pages/router/router_generator.dart';
import 'presentation/pages/router/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Harold Professional Profile',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //builder: (_, child) => HomePage(
      //  child: child ?? const Text("Loading..."),
      //),
      //initialRoute: routeHome,
      //navigatorKey: navKey,
      //onGenerateRoute: RouteGenerator.generateRoute,
      home: HomePageOld(),
    );
  }
}
