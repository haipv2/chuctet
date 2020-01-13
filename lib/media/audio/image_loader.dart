import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ImageLoader {
  static List<String> fileNames = List<String>();

  ///
  static Future<List<String>> getImageFileName() async {

    QuerySnapshot snapshot =
        await Firestore.instance.collection('images').getDocuments();
    snapshot.documents.forEach((f) {
      fileNames.add(f.data['image_name']);
    });
    return fileNames;
  }

}
