import 'package:crud_riverpod/domain/interfaces/user_repository.dart';
import 'package:crud_riverpod/infrastructure/models/response/user_list_response.dart';
import 'package:flutter/foundation.dart';
import '../../domain/di/injection.dart';
import '../../domain/handlers/api_result.dart';
import '../../domain/handlers/http_service.dart';
import '../../domain/handlers/network_exceptions.dart';


class UsersRepositoryImpl implements UsersRepository{
  // @override
  // Future<ApiResult<UserResponse>> createUser({
  //   required int id,
  //   required String createdDate,
  //   required String name,
  //   required String avatar,
  // }) async {
  //   final data = {
  //     'id': id,
  //     'createdDate': DateTime.now().toString(),
  //     'name': name,
  //     'avatar': avatar,
  //   };
  //   debugPrint('===> create user ${jsonEncode(data)}');
  //   try {
  //     final client = inject<HttpService>().client();
  //     final response =
  //     await client.post('/users', data: data);
  //     return ApiResult.success(data: UserResponse.fromJson(response.data));
  //   } catch (e) {
  //     debugPrint('===> create user fail$e');
  //     return ApiResult.failure(error: NetworkExceptions.getDioException(e),statusCode: NetworkExceptions.getDioStatus(e));
  //   }
  // }

  @override
  Future<ApiResult<UserListResponse>> getUsers() async {
    try {
      final client = inject<HttpService>().client();
      final response =
      await client.get('/users');
      return ApiResult.success(data: UserListResponse.fromJson(response.data));
    } catch (e) {
      debugPrint('===> get user fail $e');

      return ApiResult.failure(error: NetworkExceptions.getDioException(e),statusCode: NetworkExceptions.getDioStatus(e));
    }
  }







}
