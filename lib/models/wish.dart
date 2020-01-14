import 'base_model.dart';

class Wish extends BaseModel{
  String content;
  String imgUrl;

  /// default is text: empty
  String msgType;
  String sendTo;
  String active;
  String type;
  String date;

  Wish.fromMap(Map<String, dynamic> maps) {
      content = maps['content'];
      imgUrl = maps['img_url'];
      active = maps['active'];
      date = maps['date'];
  }
}
