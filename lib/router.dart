import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_loses_extra/screens.dart';

part 'router.g.dart';

final appRouter = GoRouter(
    routes: $appRoutes,
    redirect: (context, state) {
      if (state.matchedLocation == "/$details2PartialPath") {
        return "/$details3PartialPath";
      }
      return null;
    });

@immutable
class DetailsScreenRoute extends GoRouteData {
  const DetailsScreenRoute();

  @override
  MaterialPage<void> buildPage(BuildContext context, GoRouterState state) {
    final extra = state.extra as BaseDetailScreenExtra;
    return MaterialPage(
      name: state.name,
      child: DetailsScreen(extra: extra),
      fullscreenDialog: true,
    );
  }
}

@immutable
class DetailsScreen2Route extends GoRouteData {
  const DetailsScreen2Route();

  @override
  MaterialPage<void> buildPage(BuildContext context, GoRouterState state) {
    final extra = state.extra as BaseDetailScreenExtra;
    return MaterialPage(
      name: state.name,
      child: DetailsScreen2(extra: extra),
      fullscreenDialog: true,
    );
  }
}

@immutable
class DetailsScreen3Route extends GoRouteData {
  const DetailsScreen3Route();

  @override
  MaterialPage<void> buildPage(BuildContext context, GoRouterState state) {
    final extra = state.extra as BaseDetailScreenExtra;
    return MaterialPage(
      name: state.name,
      child: DetailsScreen3(extra: extra),
      fullscreenDialog: true,
    );
  }
}

const details1PartialPath = 'details1';
const details2PartialPath = 'details2';
const details3PartialPath = 'details3';

@TypedGoRoute<HomeScreenRoute>(
  path: '/',
  routes: [
    TypedGoRoute<DetailsScreenRoute>(
      name: 'details1',
      path: details1PartialPath,
    ),
    TypedGoRoute<DetailsScreen2Route>(
      name: 'details2',
      path: details2PartialPath,
    ),
    TypedGoRoute<DetailsScreen3Route>(
      name: 'details3',
      path: details3PartialPath,
    ),
  ],
)
@immutable
class HomeScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

@TypedGoRoute<DetailsScreenPageRoute>(path: '/contact', name: '/contact')
@immutable
class DetailsScreenPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    final extra = state.extra as BaseDetailScreenExtra;
    return DetailsScreen(extra: extra);
  }
}
