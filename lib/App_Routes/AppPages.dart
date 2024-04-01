import 'package:get/get.dart';
import 'package:mimax/Presentation/HistoryScreen/Binding/HistoryScreenBinding.dart';
import 'package:mimax/Presentation/HomeScreen/Binding/HomeScreenBinding.dart';
import 'package:mimax/Presentation/InspectionScreen/Binding/InspectionScreenBinding.dart';
import 'package:mimax/Presentation/LoginScreen/Binding/LoginScreenBinding.dart';
import 'package:mimax/Presentation/Notifications/Binding/NotificationsBinding.dart';
import 'package:mimax/Presentation/RootScreen/Binding/RootScreenBinding.dart';
import 'package:mimax/Presentation/SettingScreen/Binding/SettingScreenBinding.dart';
import 'package:mimax/Presentation/VehicleDetails/Binding/VehicleDetailsBinding.dart';
import 'package:mimax/Presentation/VehicleForSale/Binding/VehicleForSaleBinding.dart';
import 'package:mimax/Presentation/VehicleRepairDetail/Binding/VehicleRepairDetailBinding.dart';
import 'package:mimax/Presentation/VehicleSale/Binding/VehicleSaleBinding.dart';
import '../Presentation/HistoryScreen/View/HistoryScreen.dart';
import '../Presentation/HomeScreen/View/HomeScreen.dart';
import '../Presentation/InspectionScreen/View/InspectionScreen.dart';
import '../Presentation/LandingScreen1/Binding/LandingScreen1Binding.dart';
import '../Presentation/LandingScreen1/View/LandingScreen1.dart';
import '../Presentation/LandingScreen2/Binding/LandingScreen2Binding.dart';
import '../Presentation/LandingScreen2/View/LandingScreen2.dart';
import '../Presentation/LandingScreen3/Binding/LandingScreen3Binding.dart';
import '../Presentation/LandingScreen3/View/LandingScreen3.dart';
import '../Presentation/LoginOption/Binding/LoginOptionBinding.dart';
import '../Presentation/LoginOption/View/LoginOption.dart';
import '../Presentation/LoginScreen/View/LoginScreen.dart';
import '../Presentation/Notifications/View/Notifications.dart';
import '../Presentation/QRScanScreen/Binding/QRScanScreenBinding.dart';
import '../Presentation/QRScanScreen/View/QRScanScreen.dart';
import '../Presentation/RootScreen/View/RootScreen.dart';
import '../Presentation/SettingScreen/View/SettingScreen.dart';
import '../Presentation/SplashScreen/Binding/SplashScreenBinding.dart';
import '../Presentation/SplashScreen/View/SplashScreen.dart';
import '../Presentation/VehicleDetails/View/VehicleDetails.dart';
import '../Presentation/VehicleForSale/View/VehicleForSale.dart';
import '../Presentation/VehicleRepairDetail/View/VehicleRepairDetail.dart';
import '../Presentation/VehicleSale/View/VehicleSale.dart';
import 'Routes.dart';

class AppPages{
  static final routes = [
    GetPage(
      name: Routes.SplashScreen,
      page: () => SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: Routes.LandingScreen1,
      page: () => LandingScreen1(),
      binding: LandingScreen1Binding(),
    ),
    GetPage(
      name: Routes.LandingScreen2,
      page: () => LandingScreen2(),
      binding: LandingScreen2Binding(),
    ),
    GetPage(
      name: Routes.LandingScreen3,
      page: () => LandingScreen3(),
      binding: LandingScreen3Binding(),
    ),
    GetPage(
      name: Routes.LoginOption,
      page: () => LoginOption(),
      binding: LoginOptionBinding(),
    ),
    GetPage(
      name: Routes.QRScanScreen,
      page: () => QRScanScreen(),
      binding: QRScanScreenBinding(),
    ),
    GetPage(
      name: Routes.LoginScreen,
      page: () => LoginScreen(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: Routes.HomeScreen,
      page: () => HomeScreen(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: Routes.InspectionScreen,
      page: () => InspectionScreen(),
      binding: InspectionScreenBinding(),
    ),
    GetPage(
      name: Routes.VehicleSale,
      page: () => VehicleSale(),
      binding: VehicleSaleBinding(),
    ),
    GetPage(
      name: Routes.SettingScreen,
      page: () => SettingScreen(),
      binding: SettingScreenBinding(),
    ),
    GetPage(
      name: Routes.VehicleRepairDetail,
      page: () => VehicleRepairDetail(),
      binding: VehicleRepairDetailBinding(),
    ),
    GetPage(
      name: Routes.VehicleDetails,
      page: () => VehicleDetails(),
      binding: VehicleDetailsBinding(),
    ),
    GetPage(
      name: Routes.VehicleForSale,
      page: () => VehicleForSale(),
      binding: VehicleForSaleBinding(),
    ),
    GetPage(
      name: Routes.RootScreen,
      page: () => RootScreen(),
      binding: RootScreenBinding(),
    ),
    GetPage(
      name: Routes.Notifications,
      page: () => Notifications(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: Routes.HistoryScreen,
      page: () => HistoryScreen(),
      binding: HistoryScreenBinding(),
    ),
  ];
}