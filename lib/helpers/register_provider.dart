import 'package:provider/provider.dart';

import '../provider/edit_profile_provider.dart';
import '../provider/login_provider.dart';
import '../provider/product_details_provider.dart';
import '../provider/register_provider.dart';
import '../provider/reset_password_provider.dart';

var providers = [
  ChangeNotifierProvider<LoginProvider>(create: ((context) => LoginProvider())),
  ChangeNotifierProvider<RegisterProvider>(
    create: ((context) => RegisterProvider()),
  ),

  ChangeNotifierProvider<ResetPasswordProvider>(
    create: ((context) => ResetPasswordProvider()),
  ),
  ChangeNotifierProvider<EditProfileProvider>(
    create: ((context) => EditProfileProvider()),
  ),
  ChangeNotifierProvider<ProductDetailsProvider>(
    create: ((context) => ProductDetailsProvider()),
  ),
];
