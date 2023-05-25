import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:task_mgmt/Prima/domain/entities/PassBookModel.dart';
import 'package:task_mgmt/Prima/presentation/manager/passbookcontroller.dart';
import 'package:task_mgmt/Prima/presentation/themes/appcolors.dart';

class PassbookItems extends StatefulWidget {
  const PassbookItems({super.key});

  @override
  State<PassbookItems> createState() => _PassbookItemsState();
}

class _PassbookItemsState extends State<PassbookItems> {
  final controller = Get.find<PassBookController>();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.passbookitems.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return PassBookMenu(model: controller.passbookitems[index]);
      },
    );
  }
}

class PassBookMenu extends StatelessWidget {
  const PassBookMenu({super.key, required this.model});
  final PassBookModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
      child: Card(
        elevation: 5,
        child: ListTile(
          leading: SizedBox(
            height: 50,
            width: 50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                model.img,
              ),
            ),
          ),
          title: Text(
            model.title,
            style: TextStyle(color: AppColors.cardcolor),
          ),
          trailing: GestureDetector(
              onTap: () => model.ontap(),
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: AppColors.black,
              )),
        ),
      ),
    );
  }
}
