import 'package:crud_riverpod/application/main/main_provider.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import '../../../application/splash/splash_provider.dart';
import '../../../infrastructure/services/app_assets.dart';
import '../../routes/app_router.gr.dart';



class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
          (_) {
        ref.read(splashProvider.notifier).checkConnection(
          noConnection: () =>
              context.replaceRoute(const NoConnectionRoute()),
          goMain: () {
            ref.read(mainProvider.notifier).getUsers();
            context.replaceRoute(const MainRoute());
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Image.asset(AppAssets.pngSplash, fit: BoxFit.cover);
  }
}
