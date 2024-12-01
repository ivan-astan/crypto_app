import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 65, 57, 57),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
  useMaterial3: true,
  dividerColor: Colors.grey,
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  textTheme: const TextTheme(
      bodyMedium: TextStyle(
          color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
      labelSmall: TextStyle(
        color: Color.fromARGB(255, 150, 139, 139),
        fontSize: 12,
        fontWeight: FontWeight.w500,
      )),
);
