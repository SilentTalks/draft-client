import 'package:flutter/material.dart';

import '../screen/route_path_list.dart';

class MaterialWidget extends StatelessWidget {
  const MaterialWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    RoutePathList routePathList = RoutePathList();

    return MaterialApp(
      title: 'SilentTalks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.black,
          foregroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialRoute: routePathList.initialRoute,
      routes: routePathList.routes,
    );
  }
}
