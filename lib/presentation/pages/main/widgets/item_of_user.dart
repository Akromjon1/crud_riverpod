import 'package:auto_route/auto_route.dart';
import 'package:crud_riverpod/infrastructure/models/data/user_data.dart';
import 'package:crud_riverpod/presentation/styles/style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../routes/app_router.gr.dart';
class ItemOfPost extends StatelessWidget {
  final UserData userData;
  final Future<void> Function() delete;
  const ItemOfPost({super.key, required this.userData, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: UniqueKey(),
      startActionPane: ActionPane(
        extentRatio: 0.5,
        dismissible: DismissiblePane(onDismissed: () {
          //homeScoped.apiPostDelete(context, post);
          delete();
        }),
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              delete();
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete_outline,
          ),
          SlidableAction(
            onPressed: (context) => context.router.push(
              UpdateRoute(name: userData.name!, id: userData.id!),
            ),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            icon: Icons.update,
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(userData.avatar!.isEmpty ? "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/989.jpg" : userData.avatar!),
            ),
            SizedBox(width: 20.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userData.name!,
                  style: Style.interBold(),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  userData.createdAt!,
                  style: Style.interNormal(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
