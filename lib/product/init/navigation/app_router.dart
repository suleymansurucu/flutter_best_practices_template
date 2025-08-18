import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_best_practices_template/feature/home/view/widget/home_view.dart';
import 'package:flutter_best_practices_template/feature/home/view/widget/home_view_detail.dart';


part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')

/// Project's main information about the navigation structure.
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
  AutoRoute(page: HomeRoute.page, initial: true,),
    AutoRoute(page: HomeRouteDetail.page,),

        ];
}