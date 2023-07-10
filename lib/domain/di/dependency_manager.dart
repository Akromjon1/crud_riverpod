import 'package:get_it/get_it.dart';

import '../../infrastructure/repositories/user_repository_impl.dart';
import '../../presentation/routes/app_router.gr.dart';
import '../handlers/http_service.dart';
import '../interfaces/user_repository.dart';



final GetIt getIt = GetIt.instance;

Future setUpDependencies() async {
  getIt.registerSingleton<AppRouter>(AppRouter());

  getIt.registerLazySingleton<HttpService>(() => HttpService());
  getIt.registerSingleton<UsersRepository>(UsersRepositoryImpl());

}


final appRouter = getIt.get<AppRouter>();
final usersRepository = getIt.get<UsersRepository>();
