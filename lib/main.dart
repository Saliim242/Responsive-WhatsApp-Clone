import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/colors.dart';
import 'package:whatsapp_responsive_ui/responsive/respnsive_layout.dart';
import 'package:whatsapp_responsive_ui/screens/mobile_res_layout.dart';
import 'package:whatsapp_responsive_ui/screens/web_res_layout.dart';

import 'screens/tablet_re.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(
        mobileResponsive: MobileResponsiveLayout(),
        webResponsive: WebResponsiveLayout(),
        tabletResonsive: TabletResonsive(),
      ),
    );
  }
}
