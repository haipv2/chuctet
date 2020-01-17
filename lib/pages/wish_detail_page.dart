import 'package:chuctet/common/const.dart';
import 'package:chuctet/models/wish.dart';
import 'package:contacts_plugin/contacts_plugin.dart';
import 'package:contacts_plugin/contacts_plugin.dart';
//import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

import 'widget/fonts_widgets.dart';

class WishDetailPage extends StatefulWidget {
  final Wish wish;

  WishDetailPage(this.wish);

  @override
  _WishDetailPageState createState() => _WishDetailPageState();
}

class _WishDetailPageState extends State<WishDetailPage> {
  String font = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        actions: <Widget>[FontDropDownList()],
      ),
      body: Container(
        decoration: boxDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                  child: Text(
                widget.wish.content,
                style: textStyle1,
              )),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Icon(Icons.favorite),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Icon(Icons.favorite),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
//                        Share.share(widget.wish.content);
                          openContact();
                      },
                      child: Theme(
                          data: Theme.of(context).copyWith(
                            canvasColor: Colors.blue
                          ),
                          child: Icon(
                        Icons.sms,
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void openContact() async {
    // Get all contacts on device
//    Iterable<Contact> contacts = await ContactsService.getContacts();
    List<Contact> contacts = await ContactsPlugin().getContacts();
    print(contacts);
  }
}
