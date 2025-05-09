
import 'package:provider/provider.dart';

import '../provider/login_provider.dart';


var providers = [
  ChangeNotifierProvider<LoginProvider>(
    create: ((context) => LoginProvider()),
  ),
  
];
