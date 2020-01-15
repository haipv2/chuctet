import 'package:chuctet/common/enums.dart';
import 'package:chuctet/models/base_model.dart';
import 'package:chuctet/models/wish.dart';
import 'package:chuctet/services/api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../locator.dart';

class ListWishModel extends BaseModel {

  Future getListWish(Object arguments) async{
    if (arguments == 0) {
      getListWishFriends();
    }
  }
  Api _api = locator<Api>();

  Future<List<Wish>> getListWishFriends() async {
    var result = await _api.getDataCollection();
    listWish = result.documents.map((item) => Wish.fromMap(item.data)).toList();
    return listWish;

//    Firestore.instance.collection('loichuc').snapshots().listen((data){
//      print(data);
//    });
//    fillData();
//    viewState = ViewState.done;
//    return listWish;
  }

  Stream<QuerySnapshot> getListWishAsStream(){
    return _api.streamDataCollection();
  }

  List<Wish> listWish = [];

  Future<List<Wish>> fillData() async {
//    CollectionReference collection = Firestore.instance.collection('loichuc');
//    var year = DateTime.now().year;
//    CollectionReference collection = Firestore.instance.collection('loichuc');
//    collection.reference().snapshots().listen((data) {
//      collection.where('date', isEqualTo: year);
//      collection.where('send_to', isEqualTo: 'friend');
//    });
//
//    collection.reference().snapshots().listen((data) {
//      data.documents.forEach((items) {
//        listWish.add(Wish.fromMap(items as Map<String, dynamic>));
//        return listWish;
//      });
//    });
    Firestore.instance.collection('loichuc').snapshots().listen((items){
      print(items);
//      listWish.add(Wish.fromMap(items as Map<String, dynamic>));
    });
//    listWish.add(Wish()..content = 'gege');
    return listWish;
//    listWish.add(Wish()..content = 'gege');
  }
}
