import 'package:flutter/widgets.dart';

import '../service/app_service.dart';

final class AppServiceProvider extends InheritedWidget {
  const AppServiceProvider({
    super.key,
    required this.appService,
    required super.child,
  });

  final AppService appService;

  static AppService? maybeOf(BuildContext context) {
    final provider = context
        .getElementForInheritedWidgetOfExactType<AppServiceProvider>()
        ?.widget as AppServiceProvider?;
    return provider?.appService;
  }

  static AppService of(BuildContext context) {
    final appService = maybeOf(context);
    if (appService == null) {
      throw FlutterError('AppServiceProvider is not found in the widget tree.');
    }
    return appService;
  }

  @override
  bool updateShouldNotify(AppServiceProvider oldWidget) => false;
}
