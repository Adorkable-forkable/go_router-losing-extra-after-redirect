// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeScreenRoute,
      $detailsScreenPageRoute,
    ];

RouteBase get $homeScreenRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeScreenRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'details1',
          name: 'details1',
          factory: $DetailsScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'details2',
          name: 'details2',
          factory: $DetailsScreen2RouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'details3',
          name: 'details3',
          factory: $DetailsScreen3RouteExtension._fromState,
        ),
      ],
    );

extension $HomeScreenRouteExtension on HomeScreenRoute {
  static HomeScreenRoute _fromState(GoRouterState state) => HomeScreenRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DetailsScreenRouteExtension on DetailsScreenRoute {
  static DetailsScreenRoute _fromState(GoRouterState state) =>
      const DetailsScreenRoute();

  String get location => GoRouteData.$location(
        '/details1',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DetailsScreen2RouteExtension on DetailsScreen2Route {
  static DetailsScreen2Route _fromState(GoRouterState state) =>
      const DetailsScreen2Route();

  String get location => GoRouteData.$location(
        '/details2',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DetailsScreen3RouteExtension on DetailsScreen3Route {
  static DetailsScreen3Route _fromState(GoRouterState state) =>
      const DetailsScreen3Route();

  String get location => GoRouteData.$location(
        '/details3',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $detailsScreenPageRoute => GoRouteData.$route(
      path: '/contact',
      name: '/contact',
      factory: $DetailsScreenPageRouteExtension._fromState,
    );

extension $DetailsScreenPageRouteExtension on DetailsScreenPageRoute {
  static DetailsScreenPageRoute _fromState(GoRouterState state) =>
      DetailsScreenPageRoute();

  String get location => GoRouteData.$location(
        '/contact',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'2717cd0a406a972a213b8250893f482be6298c39';

/// See also [router].
@ProviderFor(router)
final routerProvider = Provider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RouterRef = ProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
