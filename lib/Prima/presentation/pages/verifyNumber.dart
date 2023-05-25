import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lottie/lottie.dart';
import '../../core/respose_classify.dart';
import '../manager/cutomer_creationController.dart';
import '../routes/app_pages.dart';
import '../themes/appcolors.dart';
import '../widgets/button.dart';

class MobileNumberPage extends StatelessWidget {
   MobileNumberPage({Key? key}) : super(key: key);

   final controller = Get.find<CustomerCreationController>();

  _otpModalSheet(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    showModalBottomSheet(
        isScrollControlled: true,
        enableDrag: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 3,
        // barrierColor: AppColors.offBlack,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: height * 0.30,
              padding: const EdgeInsets.only(right: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Form(
                  key: controller.otpKey,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Enter Your OTP',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.09,
                              right: MediaQuery.of(context).size.width * 0.09),
                          child: TextFormField(
                            controller: controller.otpController,
                            decoration: InputDecoration(
                                fillColor: AppColors.primaryColor,
                                filled: true,
                                labelText: 'OTP',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          )),
                      SizedBox(
                        // width: MediaQuery.of(context).size.width * 0.8,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.06),
                          child: Button(
                            title: 'Verify OTP',
                            function: () {
                             Get.toNamed(AppPages.customerCreationScreen);
                              // controller.getOtp();
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child:Form(
            key:controller.verifyPhoneKey,
            child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: Lottie.asset('assets/anime/mobilePage.json'),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(15),
                    child: IntlPhoneField(
                      decoration:InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                            color: AppColors.blackColor
                        )
                        )
                      ),
                      controller: controller.phoneNoController,
                      initialCountryCode: 'IN',
                      onChanged: ((value) => print(value.completeNumber)),

                    )
                  ),
                  Obx(()=> controller.verifyMobileState.value.status==Status.LOADING? const Center(child: CircularProgressIndicator(),):
                     Button(title: 'Get OTP', function: (){
                       controller.verifyPhoneNo();
                       controller.phoneNoController.text.isEmpty? Container():
                           Future.delayed(const Duration(
                             milliseconds: 900,),(){
                             _otpModalSheet(context);
                           }
                           );
                     }),
                  ),
                ],
              ),
          ),
          ),
        ),
    );
  }
}
