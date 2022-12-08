import 'package:chatwith/constants/utils.dart';
import 'package:chatwith/views/home.dart';

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


void main() {
  return runApp(
      const ProviderScope(
          child: ChatApp()
      )
  );
}


class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, type) {
        return MaterialApp(
          title: 'Chatwith',
          theme: ThemeData(
            primaryColor: $utils.color.primaryColor,
            colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: $utils.color.primaryColor,
              secondary: $utils.color.accentColor,
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: const Home(),
        );
      },
    );
  }
}
