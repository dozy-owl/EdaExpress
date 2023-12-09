// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccountScreen(),
      );
    },
    CurrentBrandRoute.name: (routeData) {
      final args = routeData.argsAs<CurrentBrandRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CurrentBrandScreen(
          shopName: args.shopName,
        ),
      );
    },
    MarketsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MarketsScreen(),
      );
    },
    NewPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewPageScreen(),
      );
    },
    ShopingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShopingScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpScreen(),
      );
    },
  };
}

/// generated route for
/// [AccountScreen]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute({List<PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CurrentBrandScreen]
class CurrentBrandRoute extends PageRouteInfo<CurrentBrandRouteArgs> {
  CurrentBrandRoute({
    required String shopName,
    List<PageRouteInfo>? children,
  }) : super(
          CurrentBrandRoute.name,
          args: CurrentBrandRouteArgs(
            shopName: shopName,
          ),
          initialChildren: children,
        );

  static const String name = 'CurrentBrandRoute';

  static const PageInfo<CurrentBrandRouteArgs> page =
      PageInfo<CurrentBrandRouteArgs>(name);
}

class CurrentBrandRouteArgs {
  const CurrentBrandRouteArgs({
    required this.shopName,
  });

  final String shopName;


  @override
  String toString() {
    return 'CurrentBrandRouteArgs{shopName: $shopName}';
  }
}

/// generated route for
/// [MarketsScreen]
class MarketsRoute extends PageRouteInfo<void> {
  const MarketsRoute({List<PageRouteInfo>? children})
      : super(
          MarketsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MarketsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewPageScreen]
class NewPageRoute extends PageRouteInfo<void> {
  const NewPageRoute({List<PageRouteInfo>? children})
      : super(
          NewPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShopingScreen]
class ShopingRoute extends PageRouteInfo<void> {
  const ShopingRoute({List<PageRouteInfo>? children})
      : super(
          ShopingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignInScreen]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
