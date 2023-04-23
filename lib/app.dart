import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seav_phov/core/theme/theme_config.dart';
import 'package:seav_phov/providers/theme_provider.dart';
import 'package:seav_phov/views/main/main_view.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  static final navigatorKey = GlobalKey<NavigatorState>(debugLabel: "App");

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode,
      theme: ThemeConfig.config.lightTheme(context),
      darkTheme: ThemeConfig.config.darkTheme(context),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: _initializeFirebase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return const MainView();
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    ));
  }
}
