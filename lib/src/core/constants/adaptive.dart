import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AdaptiveUi {
  // ignore: unused_field
  static const Set<TargetPlatform> _desktop = <TargetPlatform>{
    TargetPlatform.linux,
    TargetPlatform.macOS,
    TargetPlatform.windows
  };

  static const Set<TargetPlatform> _mobile = <TargetPlatform>{
    TargetPlatform.android,
    TargetPlatform.fuchsia,
    TargetPlatform.iOS,
  };
  static const double smallBreakpoint = 700;
  static const double mediumBreakpoint = 1000;
  static const double largeBreakpoint = 1400;

  /// this point is used to help with animations
  ///  before a setState is called
  static const double animPoint = 200;

  static const double preMedimuBreakpoint = mediumBreakpoint - animPoint;
  static const double preLargeBreakpoint = largeBreakpoint - animPoint;

  /// 0 - 1000
  static const WidthPlatformBreakpoint small =
      WidthPlatformBreakpoint(begin: 0, end: mediumBreakpoint);

  /// 0+
  static const WidthPlatformBreakpoint smallAndUp =
      WidthPlatformBreakpoint(begin: 0);

  /// 0 - 1000 mobile
  static const WidthPlatformBreakpoint smallMobile = WidthPlatformBreakpoint(
      begin: 0, end: mediumBreakpoint, platform: _mobile);

  /// 1000+
  static const WidthPlatformBreakpoint mediumAndUp =
      WidthPlatformBreakpoint(begin: mediumBreakpoint);

  /// 1000 - 1200
  static const WidthPlatformBreakpoint medium =
      WidthPlatformBreakpoint(begin: mediumBreakpoint, end: largeBreakpoint);

  /// 1200+
  static const WidthPlatformBreakpoint largeAndUp =
      WidthPlatformBreakpoint(begin: largeBreakpoint);

  static void init() {
    ResponsiveSizingConfig.instance.setCustomBreakpoints(
      const ScreenBreakpoints(
        watch: 0,
        tablet: mediumBreakpoint, // medium
        desktop: largeBreakpoint, // large
      ),
    );
  }

  /// used in every screen to set the screen size of the responsive builder
  static void initScreen(BoxConstraints constraints, BuildContext context) {
    ResponsiveAppUtil.preferDesktop =
        constraints.maxWidth > AdaptiveUi.mediumBreakpoint;
    ResponsiveAppUtil.setScreenSize(constraints, Orientation.portrait);
  }

  static bool isDesktop(BuildContext context) =>
      getDeviceType(MediaQuery.of(context).size) == DeviceScreenType.desktop;

  static bool isTablet(BuildContext context) =>
      getDeviceType(MediaQuery.of(context).size) == DeviceScreenType.tablet;

  static bool isMobile(BuildContext context) =>
      getDeviceType(MediaQuery.of(context).size) == DeviceScreenType.mobile;

  static bool isLandScape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }
}

/// This is a custom adaptive screen that allows you to use the watch widget
/// and the desktop widget at the same time.
///
/// this widget forces const widgets to rebuild when the screen size changes
/// even if the widget is not in the tree, or if the widget is const.
class CustomAdaptiveScreen extends StatelessWidget {
  CustomAdaptiveScreen.builder({
    super.key,
    // this.breakpoints,
    this.watch,
    this.mobile,
    this.tablet,
    this.desktop,
  }) {
    final hasMobileLayout = mobile != null;
    final hasDesktopLayout = desktop != null;

    assert(
      hasMobileLayout || hasDesktopLayout,
      'You should supply either a mobile layout or a desktop layout. If you don\'t need two layouts then remove this widget and use the widget you want to use directly. ',
    );
  }

  // final ScreenBreakpoints? breakpoints;
  final Widget? watch;
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  @override
  Widget build(BuildContext context) {
    final Widget? watchWidget = watch;
    final Widget? mobileWidget = mobile;
    final Widget? tabletWidget = tablet;
    final Widget? desktopWidget = desktop;
    return ScreenTypeLayout.builder(
      watch:
          (watchWidget != null) ? (BuildContext context) => watchWidget : null,
      mobile: (mobileWidget != null)
          ? (BuildContext context) => mobileWidget
          : null,
      tablet: (tabletWidget != null)
          ? (BuildContext context) => tabletWidget
          : null,
      desktop: (desktopWidget != null)
          ? (BuildContext context) => desktopWidget
          : null,
    );
  }
}
