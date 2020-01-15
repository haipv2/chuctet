import 'package:chuctet/common/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List<String> menus = [
  'Gửi lời chúc tới bạn bè',
  'Gửi lời chúc đến cha mẹ',
  'Love',
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarOpacity: 1,
        title: Text('CHÚC VUI'),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.volume_up),
          )
        ],
      ),
      body: Container(
        decoration: boxDecoration,
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, i) {
              if (i == 0) {
                return MenuItem(i, Icons.tag_faces);
              } else if (i == 1) {
                return MenuItem(i, Icons.supervisor_account);
              }
              return MenuItem(i, Icons.favorite);
            }),
      ),
    );
  }

}

class MenuItem extends StatelessWidget {
  final int i;
  final IconData iconData;

  MenuItem(this.i, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey)),
              child: ListTile(
                title: Text(
                  menus[i],
                  style: textStyleMenu,
                ),
                leading: Icon(iconData),
                trailing: Icon(Icons.forward),
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(PAGE_LIST_WISHES, arguments: i);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
