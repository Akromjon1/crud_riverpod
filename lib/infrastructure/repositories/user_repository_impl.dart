import 'dart:convert';

import 'package:crud_riverpod/domain/interfaces/user_repository.dart';
import 'package:crud_riverpod/infrastructure/models/data/user_data.dart';
import 'package:crud_riverpod/infrastructure/models/response/user_list_response.dart';
import 'package:flutter/foundation.dart';
import '../../domain/di/injection.dart';
import '../../domain/handlers/api_result.dart';
import '../../domain/handlers/http_service.dart';
import '../../domain/handlers/network_exceptions.dart';


class UsersRepositoryImpl implements UsersRepository{
  @override
  Future<ApiResult<UserData>> deleteUser({
    required int id,

  }) async {
    try {
      final client = inject<HttpService>().client();
      final response =
      await client.delete('/users/$id');
      return ApiResult.success(data: UserData.fromJson(response.data));
    } catch (e) {
      debugPrint('===> delete user fail$e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e),statusCode: NetworkExceptions.getDioStatus(e));
    }
  }
  @override
  Future<ApiResult<UserData>> updateUser({
    required String id,
    required String createdAt,
    required String name,
    required String avatar,
  }) async {
    final data = {
      'id': id,
      'createdDate': DateTime.now().toString(),
      'name': name,
      'avatar': avatar,
    };
    debugPrint('===> update user ${jsonEncode(data)}');
    try {
      final client = inject<HttpService>().client();
      final response =
      await client.put('/users/${int.parse(id)}', data: data);
      return ApiResult.success(data: UserData.fromJson(response.data));
    } catch (e) {
      debugPrint('===> update user fail$e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e),statusCode: NetworkExceptions.getDioStatus(e));
    }
  }
  @override
  Future<ApiResult<UserData>> createUser({
    required String id,
    required String createdAt,
    required String name,
    required String avatar,
  }) async {
    final data = {
      'id': id,
      'createdDate': DateTime.now().toString(),
      'name': name,
      'avatar': avatar,
    };
    debugPrint('===> create user ${jsonEncode(data)}');
    try {
      final client = inject<HttpService>().client();
      final response =
      await client.post('/users', data: data);
      return ApiResult.success(data: UserData.fromJson(response.data));
    } catch (e) {
      debugPrint('===> create user fail$e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e),statusCode: NetworkExceptions.getDioStatus(e));
    }
  }

  @override
  Future<ApiResult<UserListResponse>> getUsers() async {
    try {
      final client = inject<HttpService>().client();
      final response =
      await client.get('/users');
      print("Runtime type ${response.data.runtimeType}");
      print("Response Printing");
      print(UserListResponse.fromJson(response.data));
      return ApiResult.success(data: UserListResponse.fromJson(response.data));
    } catch (e) {
      debugPrint('===> get user fail $e');

      return ApiResult.failure(error: NetworkExceptions.getDioException(e),statusCode: NetworkExceptions.getDioStatus(e));
    }
  }







}
