import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../core/respose_classify.dart';
import '../../data/remote/modals/branchListModal.dart';
import '../../domain/entities/dropDownModal.dart';
import '../manager/save_Customer_creation.dart';
import '../routes/app_pages.dart';
import '../themes/appcolors.dart';
import '../widgets/Textformfield.dart';
import '../widgets/button.dart';


class CustomerCreationScreen extends StatefulWidget {
   CustomerCreationScreen({super.key,});

  @override
  State<CustomerCreationScreen> createState() => _CustomerCreationScreenState();
}

class _CustomerCreationScreenState extends State<CustomerCreationScreen> {
  final dropController = Get.find<SaveCustomerController>();
  TextEditingController dateinput=TextEditingController();
  final dob = DateTime;
  @override
  Widget build(BuildContext context) {

    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Creation'),
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children:   [
          Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child:Obx(()=>
              dropController.verifybranchList.value.status==Status.LOADING?Center(
                child: CircularProgressIndicator(),
              ):
                DropdownSearch<BranchModal>(
                  popupProps: const PopupProps.menu(
                    showSelectedItems: false,
                  ),
                  items:
                  dropController.verifybranchList!.value.data?.table??[
                  ],
                  itemAsString: (item) => item.brName,
                  dropdownDecoratorProps:  DropDownDecoratorProps(
                    dropdownSearchDecoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: AppColors.blackColor),
                      ),
                      labelText: 'Select Branch'
                    ),
                  ),
                  onChanged: print,
                  selectedItem: null,
                ),
              )

          ),
           const CustomTextField(hintText: 'Select Title',label: Text('Select Title'),),
            Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child:DropdownSearch<DropDownModal>(
                  popupProps: const PopupProps.menu(
                    showSelectedItems: false,
                  ),
                  // items:
                  // dropController.customerType,
                  itemAsString: (item) => item.title,
                  dropdownDecoratorProps:  DropDownDecoratorProps(
                    dropdownSearchDecoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: AppColors.blackColor),
                        ),
                        labelText: 'Select Customer Type'
                    ),
                  ),
                  onChanged: print,
                  selectedItem: null,
                )
            ),
          const CustomTextField(hintText: 'First Name',label: Text('First Name'),),
            const CustomTextField(hintText: 'Middle Name',label: Text('Middle Name'),),
            const CustomTextField(hintText: 'Last Name',label: Text('Last Name'),),
            GestureDetector(
              onTap:
                  ()async{
                DateTime? pickedDate=await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1980),
                    lastDate: DateTime(2100));
                if(pickedDate!=null){
                  if (kDebugMode) {
                    print(pickedDate);
                  }
                  String formatedDate= DateFormat("dd-MM-yyyy").format(pickedDate);
                  if (kDebugMode) {
                    print(formatedDate);
                  }
                  setState(() {
                    dateinput.text=formatedDate;
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(enabled: false,
                  controller: dateinput,
                  decoration:
                  InputDecoration(
                    filled: true,
                    fillColor: AppColors.primaryColor,
                    hintText: "Date of Birth",
                   label: null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: AppColors.blackColor,
                      )
                    )
                ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child:DropdownSearch<DropDownModal>(
                  popupProps: const PopupProps.menu(
                    showSelectedItems: false,
                  ),
                  // items:
                  // // dropController.gender,
                  itemAsString: (item) => item.title,
                  dropdownDecoratorProps:  DropDownDecoratorProps(
                    dropdownSearchDecoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: AppColors.blackColor),
                        ),
                        labelText: 'Select Gender'
                    ),
                  ),
                  onChanged: print,
                  selectedItem: null,
                )
            ),
            const CustomTextField(hintText: 'Primary Mobile Number',label: Text('Number'),),
            const   CustomTextField(hintText: 'E-Mail ID',label: Text('E-Mail ID'),),
            const  CustomTextField(hintText: 'CNI/NIC',label: Text('CNI/NIC'),),
            const  CustomTextField(hintText: 'NIU/TIN',label: Text('NIU/TIN'),),
            const  CustomTextField(hintText: 'Address 1',label: Text('Address 1'),),
            const  CustomTextField(hintText: 'Address 2',label: Text('Address 2'),),
            const CustomTextField(hintText: 'City / town / Village',label: Text('City / town / Village'),),
            const CustomTextField(hintText: 'Region',label: Text('Region'),),
            const CustomTextField(hintText: 'Country',label: Text('Country'),),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 10,right: 10),
              child: Button(title: 'Next', function: (){
                Get.toNamed(AppPages.permissionHandling);
              },),
            ),
          ],
        ),
      ),
      ),
    );
  }
}