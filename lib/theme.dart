import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:google_fonts/google_fonts.dart';

final themeProvider = StateNotifierProvider<ThemeManager, ThemeMode>((ref) {
  return ThemeManager();
});

class ThemeManager extends StateNotifier<ThemeMode> {
  ThemeManager() : super(ThemeMode.dark);

  void toggleTheme() {
    if (state == ThemeMode.dark) {
      state = ThemeMode.light;
    } else {
      state = ThemeMode.dark;
    }
  }

  void setLightMode() {
    state = ThemeMode.light;
  }

  void setDarkMode() {
    state = ThemeMode.dark;
  }
}

///

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    // general
    required this.background,
    required this.backgroundCompliment,
    required this.textColor,
    required this.border,
  });
  final Color? background;
  final Color? backgroundCompliment;
  final Color? textColor;
  final Color? border;

  @override
  CustomColors copyWith({
    Color? background,
    Color? backgroundCompliment,
    Color? textColor,
    Color? border,
  }) {
    return CustomColors(
      background: background ?? this.background,
      backgroundCompliment: backgroundCompliment ?? this.backgroundCompliment,
      textColor: textColor ?? this.textColor,
      border: border ?? this.border,
    );
  }

  // Controls how the properties change on theme changes
  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      background: Color.lerp(background, other.background, t),
      backgroundCompliment: Color.lerp(backgroundCompliment, other.backgroundCompliment, t),
      textColor: Color.lerp(textColor, other.textColor, t),
      border: Color.lerp(border, other.border, t),
    );
  }
}

final custDarkTheme = ThemeData.dark().copyWith(
  extensions: <ThemeExtension<dynamic>>[
    const CustomColors(
      // general
      background: Color(0xFF252525),
      backgroundCompliment: Color(0xFF201f1e),
      textColor: Color(0xFFFFFFFF),
      border: Color.fromARGB(255, 48, 48, 48),
    )
  ],
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  primaryTextTheme: ThemeData.dark().textTheme.apply(
      // fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
  scaffoldBackgroundColor: const Color.fromRGBO(26, 26, 26, 1.0),
);

final custLightTheme = ThemeData.light().copyWith(
  extensions: <ThemeExtension<dynamic>>[
    const CustomColors(
      // general
      background: Color(0xFFF8F8F8),
      backgroundCompliment: Color(0xFFfcfcfc),
      textColor: Color(0xFF000000),
      border: Color.fromARGB(255, 214, 214, 214),
    )
  ],
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  primaryTextTheme: ThemeData.light().textTheme.apply(
      // fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
  scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
);

///
// class ThemeToggleButton extends ConsumerWidget {
//   const ThemeToggleButton({super.key});
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return TextButton(
//       onPressed: () {
//         // print("Toggle Theme");
//         ref.read(themeProvider.notifier).toggleTheme();
//       },
//       child: const Text("Toggle Theme"),
//     );
//   }
// }
