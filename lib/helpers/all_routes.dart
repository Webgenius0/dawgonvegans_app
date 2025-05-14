import 'dart:io';

import 'package:dawgonvegans/features/auth/login/login_screen.dart';
import 'package:dawgonvegans/features/membership/presentation/membership_screen.dart';
import 'package:dawgonvegans/features/notification/notification_screen.dart';
import 'package:flutter/cupertino.dart';

import '../features/auth/forget_password/forget_screen.dart';
import '../features/auth/register/register_screen.dart';
import '../features/auth/reset_password/reset_password_screen.dart';
import '../features/edit_profile/edit_profile_screen.dart';
import '../features/help_center/presentation/help_center_screen.dart';
import '../features/payment_method/payment_method_screen.dart';
import '../features/profile_notification_setting/profile_notification_setting.dart';
import '../navigation_screen.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  // App routes Start
  static const String loginScreen = '/loginScreen';
  static const String registerScreen = '/registerScreen';
  static const String forgetPasswordScreen = '/forgetPasswordScreen';
  static const String resetPasswordScreen = '/resetPasswordScreen';
  static const String membershipScreen = '/membershipScreen';
  static const String paymentMethodScreen = '/paymentMethodScreen';
  static const String navigationScreen = '/navigationScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String editProfileScreen = '/editProfileScreen';
  static const String profileNotificationSetting = '/profileNotificationSetting';
  static const String helpCenterScreen = '/helpCenterScreen';
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: LoginScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => LoginScreen());
      case Routes.registerScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: RegisterScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(builder: (context) => RegisterScreen());
      case Routes.forgetPasswordScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: ForgetPasswordScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(builder: (context) => ForgetPasswordScreen());
      case Routes.resetPasswordScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: ResetPasswordScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(builder: (context) => ResetPasswordScreen());
      case Routes.membershipScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: MembershipScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(builder: (context) => MembershipScreen());
      case Routes.paymentMethodScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: PaymentMethodScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(builder: (context) => PaymentMethodScreen());
      case Routes.navigationScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: NavigationScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(builder: (context) => NavigationScreen());
      case Routes.notificationScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: NotificationScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(builder: (context) => NotificationScreen());
      case Routes.editProfileScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: EditProfileScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(builder: (context) => EditProfileScreen());
      case Routes.profileNotificationSetting:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: ProfileNotificationSetting(),
              settings: settings,
            )
            : CupertinoPageRoute(builder: (context) => ProfileNotificationSetting());
      case Routes.helpCenterScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
              widget: HelpCenterScreen(),
              settings: settings,
            )
            : CupertinoPageRoute(builder: (context) => HelpCenterScreen());

      default:
        return null;
    }
  }
}

// ignore: unused_element
class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
    : super(
        settings: settings,
        reverseTransitionDuration: const Duration(milliseconds: 1),
        pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return widget;
        },
        transitionDuration: const Duration(milliseconds: 1),
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) {
          return FadeTransition(
            opacity: CurvedAnimation(parent: animation, curve: Curves.ease),
            child: child,
          );
        },
      );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(opacity: value, child: child);
      },
      child: widget,
    );
  }
}
