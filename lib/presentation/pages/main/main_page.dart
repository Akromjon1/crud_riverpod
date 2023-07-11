import 'package:auto_route/auto_route.dart';
import 'package:crud_riverpod/application/main/main_provider.dart';
import 'package:crud_riverpod/presentation/pages/main/widgets/item_of_user.dart';
import 'package:crud_riverpod/presentation/styles/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../routes/app_router.gr.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(mainProvider);
    final event = ref.watch(mainProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Users", style: Style.interBold(color: Colors.white),),
      ),
      body:state.isLoading ? const Center(child: CupertinoActivityIndicator(),): ListView.builder(
          itemCount: state.userList.length,
          itemBuilder: (context, index) {
            return ItemOfPost(userData: state.userList[index],delete:()=> event.deleteUser(int.parse(state.userList[index].id!)), );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> context.router.push(const CreateRoute()),
        child: const Icon(Icons.add),
      ),

    );
  }
}
