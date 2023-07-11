import 'package:crud_riverpod/infrastructure/models/data/user_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/interfaces/user_repository.dart';
import 'main_state.dart';

class MainNotifier extends StateNotifier<MainState> {
  final UsersRepository _usersRepository;
  MainNotifier(this._usersRepository) : super(const MainState());
  Future<void> deleteUser(
      int id,
      {Function? get,
        VoidCallback? failed}
      ) async {
    state = state.copyWith(isLoading: true);
    final response = await _usersRepository.deleteUser(id: id);
    response.when(
      success: (data) {
        getUsers();
        state = state.copyWith(isLoading: false);
      },
      failure: (error,status) {
        debugPrint('====> get user fail $error');
        failed?.call();
        state = state.copyWith(isLoading: false, userList: []);
        // AppHelpers.showCheckTopSnackBar(
        //     context,
        //     text: AppHelpers.trans(
        //       status.toString(),
        //     ),
        //     type: SnackBarType.error
        // );
      },
    );
  }
  Future<void> getUsers(
  {Function? get,
      VoidCallback? failed}
      ) async {
    state = state.copyWith(isLoading: true, userList: []);
    final response = await _usersRepository.getUsers();
    response.when(
      success: (data) {
        final List<UserData> userResponses = data.data ?? [];
        state = state.copyWith(isLoading: false, userList: userResponses);
        get?.call(data.data);
      },
      failure: (error,status) {
        debugPrint('====> get user fail $error');
        failed?.call();
        state = state.copyWith(isLoading: false, userList: []);
        // AppHelpers.showCheckTopSnackBar(
        //     context,
        //     text: AppHelpers.trans(
        //       status.toString(),
        //     ),
        //     type: SnackBarType.error
        // );
      },
    );
  }
}
