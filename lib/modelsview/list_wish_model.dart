import 'package:chuctet/common/enums.dart';
import 'package:chuctet/models/base_model.dart';
import 'package:chuctet/models/wish.dart';
import 'package:chuctet/services/api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../locator.dart';

class ListWishModel extends BaseModel {
  Future getListWish(Object arguments) async {
    if (arguments == 0) {
      getListWishFriends();
    }
  }

  Api _api = locator<Api>();

  Future<List<Wish>> getListWishFriends() async {
    var result = await _api.getDataCollection();
    listWish = result.documents.map((item) => Wish.fromMap(item.data)).toList();
    viewState = ViewState.done;
    return listWish;
  }

  Stream<QuerySnapshot> getListWishAsStream() {
    return _api.streamDataCollection();
  }

  List<Wish> listWish = [];
}
