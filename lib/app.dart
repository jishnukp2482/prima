import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_mgmt/Prima/presentation/themes/appTheme.dart';

import 'Prima/presentation/routes/app_pages.dart';
import 'Prima/presentation/routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.theme1,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.passbook,
      getPages: AppRoutes.routes,
    );
  }
}
