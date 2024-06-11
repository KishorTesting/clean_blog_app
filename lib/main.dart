import 'package:clean_blog_app/core/secrets/secrets.dart';
import 'package:clean_blog_app/features/auth/presentation/pages/login_page.dart';
import 'package:clean_blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/theme/theme.dart';

void main() async{

 final supabase =  await Supabase.initialize(
    anonKey: AppSecrets.supabaseAnnonKey,
    url: AppSecrets.supabaseUrl,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}
