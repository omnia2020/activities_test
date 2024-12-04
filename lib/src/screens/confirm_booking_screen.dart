import 'package:activities/src/core/constants/adaptive.dart';
import 'package:activities/src/features/home/ui/confirm_booking_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../core/widgets/transparent_appbar.dart';

@RoutePage()
class ConfirmBookingScreen extends StatelessWidget {
  const ConfirmBookingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TransparentAppBar(
        color: Colors.white,
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const ConfirmBookingUi(),
        tablet: const ConfirmBookingUi(),
        desktop: const ConfirmBookingUi(),
      ),
    );
  }
}
