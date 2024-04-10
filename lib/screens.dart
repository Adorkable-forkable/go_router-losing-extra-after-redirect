import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_loses_extra/router.dart';

/// The home screen
class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home Screen')),
        body: Column(children: [
          Center(
            child: ElevatedButton(
              onPressed: () => context.go("/$details1PartialPath",
                  extra: const BaseDetailScreenExtra('bar1')),
              child: const Text('Go to the Details screen 1'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.go("/$details2PartialPath",
                  extra: const BaseDetailScreenExtra('bar2')),
              child: const Text(
                  'Go to the Details screen 2 (redirect to details 3)'),
            ),
          )
        ]));
  }
}

class BaseDetailScreen extends StatelessWidget {
  final String number;
  final BaseDetailScreenExtra extra;

  const BaseDetailScreen(
      {super.key, required this.number, required this.extra});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen $number\nExtra: ${extra.foo}')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: const Text('Go back to the Home screen'),
        ),
      ),
    );
  }
}

class BaseDetailScreenExtra {
  final String foo;

  const BaseDetailScreenExtra(this.foo);
}

/// The details screen
class DetailsScreen extends BaseDetailScreen {
  /// Constructs a [DetailsScreen]
  const DetailsScreen({super.key, required super.extra}) : super(number: '1');
}

/// The details screen
class DetailsScreen2 extends BaseDetailScreen {
  /// Constructs a [DetailsScreen2]
  const DetailsScreen2({super.key, required super.extra}) : super(number: '2');
}

/// The details screen
class DetailsScreen3 extends BaseDetailScreen {
  /// Constructs a [DetailsScreen3]
  const DetailsScreen3({super.key, required super.extra}) : super(number: '3');
}
