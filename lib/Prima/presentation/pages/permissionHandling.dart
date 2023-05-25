import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../manager/permissionHandlingController.dart';
import '../routes/app_pages.dart';
import '../themes/appcolors.dart';
import '../widgets/button.dart';

class PermissionHandling extends GetView<ImagePickerController> {
  PermissionHandling({Key? key}) : super(key: key);

  final captureImg = Get.find<ImagePickerController>();
  TextEditingController _fieldController = TextEditingController();

  @override
  void dispose() {
    _fieldController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              onPressed: () => captureImg.pickImage(),
              icon: const FaIcon(
                FontAwesomeIcons.camera,
                color: AppColors.primaryColor,
              ),
              label: const Text('Upload Photo',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                  )),
              style: TextButton.styleFrom(
                backgroundColor: AppColors.buttonColor,
              ),
            ),
            TextButton.icon(
              onPressed: () => captureImg.addImage(),
              icon: const FaIcon(
                FontAwesomeIcons.idCardClip,
                color: AppColors.primaryColor,
              ),
              label: const Text('ID Proof',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                  )),
              style: TextButton.styleFrom(
                backgroundColor: AppColors.buttonColor,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title: const Text('Capture Text'),
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: captureImg.imgPicker.value == null
                        ? const Text(
                            'No Image',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                            ),
                          )
                        : const Text(
                            'Image Added',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: w * 0.19,
                        width: w * 0.19,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/camera.png'),
                          ),
                        ),
                        child: captureImg.imgPicker.value == null
                            ? Container()
                            : Image.file(
                                File(captureImg.imgPicker.value?.path ?? '')),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: captureImg.fileAdd.value == null
                        ? const Text(
                            'No File Add',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                            ),
                          )
                        : const Text(
                            'File Added',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: w * 0.19,
                        width: w * 0.19,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/img.png'),
                          ),
                        ),
                        child: captureImg.fileAdd.value == null
                            ? Container()
                            : Image.file(
                                File(captureImg.fileAdd.value?.path ?? '')),
                      ),
                    ),
                  ),
                ],
              ),
              // CustomTextField(
              //     controller: _fieldController,
              //     hintText: 'Test',
              //     label: Text('Test')),
              // Container(
              //     margin: EdgeInsets.all(20),
              //     width: double.infinity,
              //     child: ElevatedButton(
              //       onPressed: () async {
              //         String value = _fieldController.text;
              //         FirebaseFirestore.instance
              //             .collection('My_test')
              //             .add({'value': value})
              //             .then((value) => print('Value added'))
              //             .catchError((error) => print('Failed to add : $error'));
              //
              //         await Get.toNamed(AppPages.firebaseDetails);
              //       },
              //       child: Text('Submit'),
              //     )
              Button(
                title: 'Done',
                function: () => Get.toNamed(AppPages.firebaseDetails),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
