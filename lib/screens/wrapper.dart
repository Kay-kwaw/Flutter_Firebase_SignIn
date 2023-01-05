import 'package:anonsignin/authenticate/authentification.dart';
import 'package:anonsignin/homes/home.dart';
import 'package:anonsignin/models/user.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    //return either home or authenticate wid
    final user = Provider.of<Users?>(context);

    if (user == null) {
      return const Authenticate();
    } else {
      return Home();
    }
  }
}
