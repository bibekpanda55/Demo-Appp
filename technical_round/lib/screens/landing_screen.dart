import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:technical_round/constant/reference_util.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:technical_round/screens/profile_page.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);
  static const routeName = '/landing-page';
  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    final wh = MediaQuery.of(context).size.width;
    final ht = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset(ReferenceUtils.artSvg2)),
                SvgPicture.asset(
                  ReferenceUtils.landingPageSvg,
                  width: wh * 0.5,
                  height: ht * 0.3,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red[300],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(ProfileScreen.routeName);
                          },
                          icon: const Icon(
                            FontAwesome5.arrow_right,
                            color: Colors.white,
                            //size: 40,
                          ),
                          label: const Text(
                            'register',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                          child: Text(
                        'me as a collector',
                        style: TextStyle(fontSize: 25),
                      ))
                    ]),
                const SizedBox(
                  height: 20,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesome5.arrow_right,
                      color: Colors.blue,
                    ),
                    label: const Text(
                      'track my application',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    )),
                const SizedBox(
                  height: 20,
                ),
                ...ReferenceUtils.list
                    .map((e) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: SvgPicture.asset(e)),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'lorem ipsium\nis used',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                ReferenceUtils.text,
                                textAlign: TextAlign.justify,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 30,
                              )
                            ])))
                    .toList(),
                SizedBox(
                  height: 30,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    ReferenceUtils.fbJpg,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    ReferenceUtils.instaJpg,
                    width: 50,
                    height: 50,
                  )
                ]),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(height: 20),
                SvgPicture.asset(ReferenceUtils.artSvg),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'About Us.\n\nTeam.\n\nReach Us.',
                      style: TextStyle(fontSize: 16),
                      //textAlign: TextAlign.justify,
                    ),
                    Text(
                      'Affiliations.\n\nDisclaimers.\n\nPrivacy Policy.',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  //contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    FontAwesome5.copyright,
                  ),
                  title: Text('Content Copyright reserved.'),
                )
              ],
            )),
      ),
    );
  }
}
