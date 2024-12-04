import 'package:activities/src/core/constants/adaptive.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/widgets/transparent_appbar.dart';
import '../features/home/ui/home_ui.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TransparentAppBar(
        backButton: SizedBox(),
        color: Colors.white,
        title: Text(
          ' افضل الفعاليات',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const HomeUi(),
        tablet: const HomeUi(),
        desktop: const HomeUi(),
      ),
    );
  }
}
