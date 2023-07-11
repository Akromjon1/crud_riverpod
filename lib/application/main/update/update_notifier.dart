import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/interfaces/user_repository.dart';
import 'update_state.dart';

class UpdateNotifier extends StateNotifier<UpdateState> {
  final UsersRepository _usersRepository;
  UpdateNotifier(this._usersRepository) : super(const UpdateState());

  Future<void> updateUser(
      String id,
      String name,
      String createdAt,
      String avatar,
  {Future<void>? post,
      VoidCallback? failed}
      ) async {
    state = state.copyWith(isLoading: true);
    final response = await _usersRepository.updateUser(id: id, createdAt: createdAt, name: name, avatar: avatar);
    response.when(
      success: (data) {
        state = state.copyWith(isLoading: false);
      },
      failure: (error,status) {
        debugPrint('====> get user fail $error');
        failed?.call();
        state = state.copyWith(isLoading: false);
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
