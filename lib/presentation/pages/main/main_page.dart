import 'package:crud_riverpod/application/main/main_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback(
    //       (_) {
    //     ref.read(splashProvider.notifier).checkConnection(
    //       noConnection: () =>
    //           context.replaceRoute(const NoConnectionRoute()),
    //       goMain: () {
    //         ref.read(mainProvider.notifier).getUsers();
    //         //context.replaceRoute(const MainRoute());
    //       },
    //     );
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {

    final state = ref.watch(mainProvider);
    print(state.userList.length);
    return Scaffold(
      body: Center(
        child: Text("Nothing"),
      ),
    );
  }
}
