import 'package:crypto/core/theme/theme.dart';
import 'package:crypto/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:crypto/core/injection_container.dart';
import 'package:crypto/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => sl<AuthBloc>())],
      child: MaterialApp(
          theme: AppTheme.lightThemeMode,
          debugShowCheckedModeBanner: false,
          home: SplashScreen()),
    );
  }
}
