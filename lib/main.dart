import 'package:anonsignin/authenticate/auth.dart';
import 'package:anonsignin/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:anonsignin/models/user.dart';


void main() async {
  {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(
      StreamProvider<Users?>.value(
        value: AuthService().user,
        initialData: null,
        child: const MaterialApp(
          home: Wrapper(),
        ),
      ),
    );
  }
}
