import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:task_mgmt/Prima/presentation/bindings/PassBookControllerBinding.dart';
import 'package:task_mgmt/Prima/presentation/pages/Account.dart';
import 'package:task_mgmt/Prima/presentation/pages/Deposit.dart';
import 'package:task_mgmt/Prima/presentation/pages/passbook.dart';
import 'package:task_mgmt/Prima/presentation/widgets/passbookitem.dart';
import '../bindings/DepositControllerBinding.dart';
import '../bindings/customer_creationBindings.dart';
import '../bindings/dashBoardBindings.dart';
import '../bindings/imagePickerbinding.dart';
import '../bindings/save_CustomerCreation_bindings.dart';
import '../bindings/slideImgebindings.dart';
import '../pages/customerCreation.dart';
import '../pages/dashboard.dart';
import '../pages/login.dart';
import '../pages/permissionHandling.dart';
import '../pages/signup.dart';
import '../pages/slidePage.dart';
import '../pages/verifyNumber.dart';
import 'app_pages.dart';

class AppRoutes {
  static List<GetPage> routes = [
    GetPage(name: AppPages.slidePage, page: () => OnboardingScreen()),
    GetPage(name: AppPages.loginPage, page: () => LoginScreen()),
    GetPage(name: AppPages.signUpPage, page: () => SignupScreen()),
    GetPage(
        name: AppPages.verifyNumberPage,
        page: () => MobileNumberPage(),
        binding: CustomerCreationBindings()),
    GetPage(
      name: AppPages.dashboardScreen,
      page: () => DashBoardScreen(),
      bindings: [DashBoardBindings(), ImgBindings()],
    ),
    GetPage(
        name: AppPages.customerCreationScreen,
        page: () => CustomerCreationScreen(),
        binding: SaveCustomerCreationBindings()),
    GetPage(
        name: AppPages.permissionHandling,
        page: () => PermissionHandling(),
        binding: ImagePickerBinding(),
        transition: Transition.leftToRight,
        transitionDuration: const Duration(milliseconds: 80)),
    GetPage(name: AppPages.account, page: () => Account()),
    GetPage(
        name: AppPages.passbookitem,
        page: () => PassbookItems(),
        binding: PassBookControllerBindings()),
    GetPage(
        name: AppPages.passbook,
        page: () => PassBook(),
        binding: PassBookControllerBindings()),
    GetPage(
        name: AppPages.Deposit,
        page: () => Deposit(),
        binding: DepositControllerBinding()),
  ];
}
