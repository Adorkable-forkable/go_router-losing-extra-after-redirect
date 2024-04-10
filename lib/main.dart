import 'package:flutter/material.dart';
import 'package:go_router_loses_extra/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  final container = ProviderContainer();
  runApp(UncontrolledProviderScope(container: container, child: const MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}
