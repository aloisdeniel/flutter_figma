import 'package:binui_editor/src/features/editor/screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the base border radius
    const double borderRadius = 2.0;
    const shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
    );

    // Create a dark, neutral color scheme
    const colorScheme = ColorScheme.dark(
      primary: Colors.white,
      onPrimary: Colors.black,
      secondary: Color(0xFFA1A1AA), // Zinc-400
      onSecondary: Colors.black,
      tertiary: Color(0xFF52525B), // Zinc-600
      onTertiary: Colors.white,
      surface: Color(0xFF09090B), // Zinc-950
      onSurface: Color(0xFFFAFAFA), // Zinc-50
      surfaceContainerLow: Color(0xFF18181B), // Zinc-900
      surfaceContainer: Color(0xFF27272A), // Zinc-800
      surfaceContainerHigh: Color(0xFF3F3F46), // Zinc-700
      outline: Color(0xFF3F3F46), // Zinc-700
      outlineVariant: Color(0xFF27272A), // Zinc-800
    );

    final baseTheme = ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF09090B), // Zinc-950
      splashFactory: NoSplash.splashFactory,

      // Reduce rounded corners globally where possible
      cardTheme: const CardThemeData(shape: shape),
      dialogTheme: const DialogThemeData(shape: shape),

      // Buttons
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          shape: shape,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: shape,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          shape: shape,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(shape: shape),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(shape: shape),
      ),

      // Inputs
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: Color(0xFF3F3F46)), // Zinc-700
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),

      // Other components
      popupMenuTheme: const PopupMenuThemeData(shape: shape),
      snackBarTheme: const SnackBarThemeData(
        shape: shape,
        behavior: SnackBarBehavior.floating,
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: const Color(0xFF27272A), // Zinc-800
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        textStyle: const TextStyle(color: Colors.white, fontSize: 12),
      ),
      dividerTheme: const DividerThemeData(
        color: Color(0xFF27272A), // Zinc-800
        thickness: 1,
      ),
    );

    // Apply the font to the theme
    final themeWithFont = baseTheme.copyWith(
      textTheme: GoogleFonts.jetBrainsMonoTextTheme(baseTheme.textTheme),
    );

    return MaterialApp(
      title: 'Binui Editor',
      debugShowCheckedModeBanner: false,
      theme: themeWithFont,
      darkTheme: themeWithFont,
      themeMode: ThemeMode.dark, // Force dark mode
      home: const EditorScreen(),
    );
  }
}
