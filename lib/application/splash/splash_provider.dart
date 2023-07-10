import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'splash_state.dart';
import 'splash_notifier.dart';

final splashProvider =
    StateNotifierProvider.autoDispose<SplashNotifier, SplashState>(
  (ref) => SplashNotifier(),
);
