import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/di/dependency_manager.dart';
import 'update_state.dart';
import 'update_notifier.dart';

final updateProvider = StateNotifierProvider<UpdateNotifier, UpdateState>(
  (ref) => UpdateNotifier(usersRepository),
);
