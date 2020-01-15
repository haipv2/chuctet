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


  Wish({this.content, this.imgUrl, this.msgType, this.sendTo, this.active,
      this.type, this.date});

  Wish.fromMap(Map maps) {
      content = maps['content'];
      imgUrl = maps['img_url'];
      active = maps['active'];
      date = maps['date'];
  }
}
