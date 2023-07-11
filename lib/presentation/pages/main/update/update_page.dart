
import 'package:auto_route/auto_route.dart';
import 'package:crud_riverpod/application/main/update/update_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../application/main/main_provider.dart';
import '../../../styles/style.dart';


class UpdatePage extends ConsumerStatefulWidget {
  String id;
  String name;
  UpdatePage({Key? key, required this.name, required this.id}) : super(key: key);

  @override
  ConsumerState<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends ConsumerState<UpdatePage> {
  late TextEditingController _nameController;
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name);
  }

  @override
  Widget build(BuildContext context) {
    final eventForMain = ref.read(mainProvider.notifier);
    final event = ref.read(updateProvider.notifier);
    final state = ref.watch(updateProvider);
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Text("Update post")
      ),
      body:
      state.isLoading ? const Center(child: CupertinoActivityIndicator()) :

      Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              controller: _nameController,
              decoration: InputDecoration(
                  label: const Text("Title"),
                  hintText: "Title",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                  border: const OutlineInputBorder()),
            ),
            const SizedBox(
              height: 15,
            ),


          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:  Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: TextButton(
          onPressed: () async{
            await event.updateUser(widget.id, _nameController.text, DateTime.now().toString(), "");
            await eventForMain.getUsers();
            context.router.navigateBack();
          },         child: Text(
            "Submit",
            style: Style.interNormal(color: Colors.white)
        ),
        ),
      ),
    );

  }
}