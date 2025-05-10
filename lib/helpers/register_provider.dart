
import 'package:provider/provider.dart';

import '../provider/login_provider.dart';
import '../provider/register_provider.dart';


var providers = [
  ChangeNotifierProvider<LoginProvider>(
    create: ((context) => LoginProvider()),
  ),
  ChangeNotifierProvider<RegisterProvider>(
    create: ((context) => RegisterProvider()),
  ),
  
];
