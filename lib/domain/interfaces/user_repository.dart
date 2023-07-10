import 'package:crud_riverpod/infrastructure/models/response/user_list_response.dart';

import '../../infrastructure/models/response/user_response.dart';
import '../handlers/api_result.dart';


abstract class UsersRepository {
  // Future<ApiResult<UserResponse>> createUser({
  //   required int id,
  //   required String createdDate,
  //   required String name,
  //   required String avatar,
  // });
  Future<ApiResult<UserListResponse>> getUsers();
}
