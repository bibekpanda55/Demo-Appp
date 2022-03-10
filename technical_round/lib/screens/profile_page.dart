import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technical_round/constant/reference_util.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const routeName = '/profile-screen';
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final wh = MediaQuery.of(context).size.width;
    final ht = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(children: [
          Row(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset(
                    ReferenceUtils.artSvg3,
                    width: 30,
                    height: 40,
                  )),
              Expanded(child: SizedBox()),
              CircleAvatar(
                child: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ),
                backgroundColor: Colors.red[900],
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.add,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.menu,
                size: 30,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Column(children: [
                Icon(
                  FontAwesome5.upload,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Upload',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                )
              ]),
              Expanded(
                  child: Column(children: [
                Image.asset(
                  ReferenceUtils.profilePng,
                  width: 200,
                  height: 200,
                ),
                Text(
                  'john.doe',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                )
              ])),
              Column(children: [
                Icon(
                  FontAwesome5.edit,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Edit',
                  style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                )
              ]),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            title: Text('My dashboard'),
            trailing: Switch(
              activeColor: Colors.white,
              activeTrackColor: Colors.green,
              value: true,
              onChanged: (val) {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '2.3K\nFollowers',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '50\nArtworks',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '21\nExhibitions',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesome5.heart,
                    color: Colors.red,
                  ),
                  label: Text(
                    '120',
                    style: TextStyle(fontSize: 18),
                  )),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(FontAwesome5.telegram),
                  label: Text(
                    '43K',
                    style: TextStyle(fontSize: 18),
                  )),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(FontAwesome5.share),
                  label: Text(
                    '120',
                    style: TextStyle(fontSize: 18),
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: wh * 0.2,
                height: 30,
                color: Colors.deepPurple,
                child: Text(
                  'pallette',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: wh * 0.2,
                height: 30,
                color: Colors.pink[900],
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: wh * 0.2,
                height: 30,
                color: Colors.red[900],
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: wh * 0.2,
                height: 30,
                color: Colors.orange,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(5),
                width: wh * 0.2,
                height: 30,
                color: Colors.yellow,
              )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    FontAwesome5.upload,
                    size: 30,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Uploads')
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.picture_in_picture,
                    size: 30,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Exhibitions',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    FontAwesome5.coins,
                    size: 30,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Revenue', style: TextStyle(color: Colors.grey))
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GridView.count(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: ReferenceUtils.list2
                .map((e) => GridTile(
                        child: Image.asset(
                      e,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    )))
                .toList(),
          )
        ]),
      )),
    );
  }
}
