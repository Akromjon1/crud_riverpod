import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/services/app_connectivity.dart';
import 'splash_state.dart';


class SplashNotifier extends StateNotifier<SplashState> {
  // final SettingsRepository _settingsRepository;
  // final UsersRepository _userRepository;

  SplashNotifier(
      //this._settingsRepository, this._userRepository
      )
      : super(const SplashState());

  Future<void> checkConnection({
    VoidCallback? noConnection,
    VoidCallback? goMain,
  }) async {
    if (await AppConnectivity.connectivity()) {
      goMain?.call();
    } else {
      noConnection?.call();
    }
  }

}
