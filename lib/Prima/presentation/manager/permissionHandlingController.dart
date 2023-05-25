import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class ImagePickerController extends GetxController {
  final imgPicker = Rxn<XFile>();
  final fileAdd = Rxn<XFile>();

  Future pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      imgPicker.value = pickedFile;
      update();
    }
  }

  Future addImage() async{
    final addFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if(addFile != null){
      fileAdd.value = addFile;
      update();
    }
  }
}
