import 'package:crud_riverpod/infrastructure/models/response/user_list_response.dart';

import '../../infrastructure/models/data/user_data.dart';
import '../handlers/api_result.dart';


abstract class UsersRepository {
  Future<ApiResult<UserData>> deleteUser({
    required int id,
  });
  Future<ApiResult<UserData>> updateUser({
    required String id,
    required String createdAt,
    required String name,
    required String avatar,
  });
  Future<ApiResult<UserData>> createUser({
    required String id,
    required String createdAt,
    required String name,
    required String avatar,
  });
  Future<ApiResult<UserListResponse>> getUsers();
}
