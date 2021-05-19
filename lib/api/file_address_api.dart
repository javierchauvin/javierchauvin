
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:javierchauvin/models/file_address_model.dart';


class FileAddressApi{

  static const String
      FA_CV = "cv";

  static Future<String> getFileAddress(String fileName)async {
    QuerySnapshot result = await Firestore.instance.collection('file_address')
        .where('name', isEqualTo: fileName).getDocuments();

    final List<DocumentSnapshot> files = result.documents;

    if (null != result.documents && 0 != result.documents.length) {
      FileAddress fileAddress = FileAddress.fromJson(files[0].data);
      return fileAddress.address;
    }
    return null;
  }
}