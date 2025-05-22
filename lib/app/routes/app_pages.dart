import 'package:get/get.dart';

import '../modules/authentication/bindings/authentication_binding.dart';
import '../modules/authentication/views/authentication_view.dart';
import '../modules/biometrics/bindings/biometrics_binding.dart';
import '../modules/biometrics/views/biometrics_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/edge_signal/bindings/edge_signal_binding.dart';
import '../modules/edge_signal/views/edge_signal_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/on-boarding/bindings/on_boarding_binding.dart';
import '../modules/on-boarding/views/on_boarding_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/self_signal/bindings/self_signal_binding.dart';
import '../modules/self_signal/views/self_signal_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/social_signal/bindings/social_signal_binding.dart';
import '../modules/social_signal/views/social_signal_view.dart';
import '../modules/touch_controls/bindings/touch_controls_binding.dart';
import '../modules/touch_controls/views/touch_controls_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ON_BOARDING;

  static final routes = [
    GetPage(
      name: _Paths.ON_BOARDING,
      page: () => const OnBoardingView(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SOCIAL_SIGNAL,
      page: () => const SocialSignalView(),
      binding: SocialSignalBinding(),
    ),
    GetPage(
      name: _Paths.SELF_SIGNAL,
      page: () => const SelfSignalView(),
      binding: SelfSignalBinding(),
    ),
    GetPage(
      name: _Paths.EDGE_SIGNAL,
      page: () => const EdgeSignalView(),
      binding: EdgeSignalBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => const AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: _Paths.BIOMETRICS,
      page: () => const BiometricsView(),
      binding: BiometricsBinding(),
    ),
    GetPage(
      name: _Paths.TOUCH_CONTROLS,
      page: () => const TouchControlsView(),
      binding: TouchControlsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
