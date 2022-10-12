import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:immich/routing/router.dart';
import 'package:immich/shared/services/api.service.dart';

class AuthGuard extends AutoRouteGuard {
  final ApiService _apiService;
  AuthGuard(this._apiService);
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    try {
      var res = await _apiService.authenticationApi.validateAccessToken();

      if (res != null && res.authStatus) {
        resolver.next(true);
      } else {
        router.replaceAll([const LoginRoute()]);
      }
    } catch (e) {
      debugPrint("Error [onNavigation] ${e.toString()}");
      router.replaceAll([const LoginRoute()]);
      return;
    }
  }
}
