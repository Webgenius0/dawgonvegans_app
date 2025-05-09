/* // ignore_for_file: deprecated_member_use

import 'package:url_launcher/url_launcher.dart';
import 'dart:io' show Platform;

Future<void> urlLunch(String url) async {
  final Uri uri = Uri.parse(url);
  if (Platform.isIOS) {
    await launchUrl(uri, mode: LaunchMode.inAppBrowserView);
  } else if (Platform.isAndroid) {
    await launchUrl(uri, mode: LaunchMode.inAppBrowserView);
  }
}
 */