import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:plant_web_app/utils/dependency_injection/global_screen_bindings.dart';
import 'package:plant_web_app/utils/route_management/route_generator.dart';
import 'package:plant_web_app/utils/route_management/route_names.dart';

Future<void> main() async {
  await GetStorage.init();

  runApp(const MyApp());
}

final box = GetStorage();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      initialBinding: GlobalScreenBindings(),
      getPages: RouteGenerator.generate(),
      initialRoute: RouteNames.kHomePageRoute,
    );
  }
}
