import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/di/dependency_manager.dart';
import 'main_state.dart';
import 'main_notifier.dart';

final mainProvider = StateNotifierProvider<MainNotifier, MainState>(
  (ref) => MainNotifier(usersRepository),
);
