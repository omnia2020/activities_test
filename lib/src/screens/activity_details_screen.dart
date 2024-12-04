import 'package:activities/src/core/constants/adaptive.dart';
import 'package:activities/src/features/home/ui/activity_details_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/widgets/transparent_appbar.dart';

@RoutePage()
class ActivityDetailsScreen extends StatelessWidget {
  const ActivityDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TransparentAppBar(
        color: Colors.white,
        title: Text(
          'فعالية الرياض',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const ActivityDetailsUi(),
        tablet: const ActivityDetailsUi(),
        desktop: const ActivityDetailsUi(),
      ),
    );
  }
}
