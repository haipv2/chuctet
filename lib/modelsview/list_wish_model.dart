import 'package:chuctet/common/enums.dart';
import 'package:chuctet/models/base_model.dart';
import 'package:chuctet/models/wish.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ListWishModel extends BaseModel {
  getListWish(Object arguments) {
    if (arguments == 0) {
      getListWishFriends();
    }
  }

  Future<List<Wish>> getListWishFriends() async {
    var year = DateTime.now().year;
    CollectionReference collection = Firestore.instance.collection('loichuc');
    collection.reference().snapshots().listen((data) {
      collection.where('date', isEqualTo: year);
      collection.where('send_to', isEqualTo: 'friend');
    });

    collection.reference().snapshots().listen((data) {
      data.documents.forEach((items) {
        listWish.add(Wish.fromMap(items as Map<String, dynamic>));
        return listWish;
      });
    });
    viewState = ViewState.done;
  }

  List<Wish> listWish;
}
