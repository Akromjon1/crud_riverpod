import 'package:auto_route/auto_route.dart';
import 'package:crud_riverpod/presentation/pages/initial/no_connection_page.dart';
import 'package:crud_riverpod/presentation/pages/main/create/create_page.dart';
import 'package:crud_riverpod/presentation/pages/main/main_page.dart';
import 'package:crud_riverpod/presentation/pages/main/update/update_page.dart';

import '../pages/pages.dart';

@CupertinoAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    CupertinoRoute(path: '/', page: SplashPage),
    CupertinoRoute(path: '/no-connection', page: NoConnectionPage),
    CupertinoRoute(path: '/main', page: MainPage),
    CupertinoRoute(path: '/create', page: CreatePage),
    CupertinoRoute(path: '/update', page: UpdatePage),

  ],
)
class $AppRouter {}
