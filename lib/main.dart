import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:omni_calculator/calculator_standard/index.dart';
import 'package:omni_calculator/theme.dart';

void main() {
  runApp(
    const ProviderScope(
        child: MyApp()
    )
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeMode tm = ref.watch(themeProvider);

    return MaterialApp(
      title: 'Omni',
      debugShowCheckedModeBanner: false,

      theme: custLightTheme,
      darkTheme: custDarkTheme,
      themeMode: tm,

      home: const MyHomePage(title: 'Standard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: customColors!.background,
        title: Text(widget.title),
      ),
      body: const StandardCalculator(),
    );
  }
}
