
import 'package:flutter/material.dart';
import 'package:social_login_training/app/router/cubit/router_cubit.dart';
import 'package:social_login_training/app/router/cubit/router_state.dart';

class RouterRootDelegate extends RouterDelegate<RouterState> {
  final GlobalKey<NavigatorState> _navigatorKey;
  final RouterCubit _routerCubit;

  RouterRootDelegate(
      GlobalKey<NavigatorState> navigatorKey, RouterCubit routerCubit)
      : _navigatorKey = navigatorKey,
        _routerCubit = routerCubit;

  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  Widget build(BuildContext context) => Navigator(
        key: navigatorKey,
        pages: _extraPages,
        onPopPage: _onPopPageParser,
      );

  List<Page> get _extraPages {
    List<Page> pages = [];
    if (_routerCubit.state is RouterStateLoginScreen) {
      pages.add(MaterialPage(child: Container(color: Colors.red,))); //TODO: provide page to load
    }
    if (_routerCubit.state is RouterStateHomeScreen) {
      pages.add(MaterialPage(child: Container(color: Colors.green,))); //TODO: provide page to load
    }

    return pages;
  }

  bool _onPopPageParser(Route<dynamic> route, dynamic result) {
    if (!route.didPop(result)) return false;
    popRoute();
    return true;
  }

  @override
  Future<bool> popRoute() async {
    return true;
  }

  @override
  void addListener(VoidCallback listener) {}

  @override
  void removeListener(VoidCallback listener) {}

  @override
  Future<void> setNewRoutePath(RouterState configuration) async {}
}
