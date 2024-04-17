import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gensou/cubits/anime_tile_language_cubit.dart';

import '/config/routes/routes.dart';
import '/config/theme/app_theme.dart';
import '/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AnimeTitleLanguageCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key, // Add Key parameter here
  }) : super(key: key); // Pass key parameter to super constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.darkTheme,
      home: const HomeScreen(),
      onGenerateRoute: onGenerateRoute,
    );
  }
}
