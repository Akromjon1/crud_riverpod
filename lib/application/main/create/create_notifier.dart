import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/interfaces/user_repository.dart';
import 'create_state.dart';

class CreateNotifier extends StateNotifier<CreateState> {
  final UsersRepository _usersRepository;
  CreateNotifier(this._usersRepository) : super(const CreateState());

  Future<void> createUser(
      String id,
      String name,
      String createdAt,
      String avatar,
  {Future<void>? post,
      VoidCallback? failed}
      ) async {
    state = state.copyWith(isLoading: true);
    final response = await _usersRepository.createUser(id: id, createdAt: createdAt, name: name, avatar: avatar);
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
