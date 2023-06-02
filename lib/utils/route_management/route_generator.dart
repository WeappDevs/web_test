import 'package:get/get.dart';
import 'package:plant_web_app/views/home_screen.dart';
import '../dependency_injection/global_screen_bindings.dart';
import 'route_names.dart';

class RouteGenerator {
  static List<GetPage<dynamic>> generate() {
    return <GetPage<dynamic>>[
      GetPage(
        name: RouteNames.kHomePageRoute,
        page: () => const HomeScreen(),
        binding: GlobalScreenBindings(),
      ),
    ];
  }
}
