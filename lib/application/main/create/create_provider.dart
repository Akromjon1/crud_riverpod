import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/di/dependency_manager.dart';
import 'create_state.dart';
import 'create_notifier.dart';

final createProvider = StateNotifierProvider<CreateNotifier, CreateState>(
  (ref) => CreateNotifier(usersRepository),
);
