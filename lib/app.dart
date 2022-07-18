import 'package:flutter/material.dart';

import 'presentation/pages/home/home_page_top_menu.dart';
import 'presentation/pages/router/router_generator.dart';
import 'presentation/pages/router/routes.dart';
import 'presentation/pages/home/home_page_side_menu.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Harold Professional Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //builder: (_, child) => HomePage(
      //  child: child ?? const Text("Some went wrong, refresh page!"),
      //),
      //initialRoute: routeHome,
      //navigatorKey: navKey,
      //onGenerateRoute: RouteGenerator.generateRoute,
      home: HomePageSideMenu(),
    );
  }
}
