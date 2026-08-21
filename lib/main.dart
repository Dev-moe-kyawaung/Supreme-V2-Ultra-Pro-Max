import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'providers/portfolio_provider.dart';
import 'screens/portfolio_home.dart';
import 'utils/seo_helper.dart';
import 'utils/constants.dart';

void main() {
  // Enable URL strategy for SEO-friendly routes
  setUrlStrategy(PathUrlStrategy());
  
  runApp(
    ChangeNotifierProvider(
      create: (_) => PortfolioProvider(),
      child: const SupremePortfolioApp(),
    ),
  );
}

class SupremePortfolioApp extends StatelessWidget {
  const SupremePortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<PortfolioProvider>();

    return MaterialApp(
      title: AppConstants.appTitle,
      debugShowCheckedModeBanner: false,
      themeMode: provider.themeMode,
      locale: provider.locale,
      supportedLocales: const [Locale('en'), Locale('my')],
      localizationsDelegates: const [],
      
      // Light Theme
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: AppConstants.primaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: Colors.white,
        cardTheme: CardThemeData(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),

      // Dark Theme
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: AppConstants.primaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        cardTheme: CardThemeData(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          color: const Color(0xFF1E293B),
        ),
      ),

      home: const PortfolioHome(),
      
      // SEO: Update meta tags on route change
      onGenerateTitle: (context) => AppConstants.appTitle,
    );
  }
}
