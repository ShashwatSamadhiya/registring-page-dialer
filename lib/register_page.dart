import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class register_page extends StatefulWidget {
  const register_page({super.key});

  @override
  State<register_page> createState() => _register_pageState();
}

class _register_pageState extends State<register_page> {
  @override
  Widget Crd(BuildContext context) {
    return Flexible(
        child: Container(
      width: 390,
      //height: 508,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 328, child: Container()),
          Expanded(
            flex: 485,
            child: Container(
                //margin: EdgeInsets.only(top: 69, left: 16),
                margin: EdgeInsets.only(left: 16),
                width: 358,
                // height: 102,
                child: RichText(
                  text: TextSpan(
                      text: 'Activate ',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: min(
                              28,
                              min(MediaQuery.of(context).size.width / 14,
                                  MediaQuery.of(context).size.height / 30)),
                          height: 1.18),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Call Recording ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: min(
                                    28,
                                    min(
                                        MediaQuery.of(context).size.width / 14,
                                        MediaQuery.of(context).size.height /
                                            30)),
                                height: 1.18
                                //letterSpacing: .36
                                )),
                        TextSpan(
                            text: 'and ',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: min(
                                    28,
                                    min(
                                        MediaQuery.of(context).size.width / 14,
                                        MediaQuery.of(context).size.height /
                                            30)),
                                height: 1.18
                                //letterSpacing: .36
                                )),
                        TextSpan(
                            text: 'Cheap International rates ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: min(
                                    28,
                                    min(
                                        MediaQuery.of(context).size.width / 14,
                                        MediaQuery.of(context).size.height /
                                            30)),
                                height: 1.18
                                //letterSpacing: .36
                                )),
                        TextSpan(
                            text: 'on your number',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: min(
                                    28,
                                    min(
                                        MediaQuery.of(context).size.width / 14,
                                        MediaQuery.of(context).size.height /
                                            30)),
                                height: 1.18
                                // letterSpacing: .36
                                )),
                      ]),
                )),
          ),
          Expanded(flex: 114, child: Container()),
          Expanded(
            flex: 100,
            child: Container(
              margin: EdgeInsets.only(left: 16),
              // width: 251,
              // height: 21,
              child: Text(
                "See how it works? ",
                style: TextStyle(
                  fontSize: min(
                      16,
                      min(MediaQuery.of(context).size.width / 18,
                          MediaQuery.of(context).size.height / 33)),
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFF636366),
                  letterSpacing: .36,
                ),
              ),
            ),
          ),
          // Expanded(flex: 152, child: Container()),
          Expanded(
            flex: 1052,
            child: Container(
              width: 390,
              // height: 221,
              //margin: EdgeInsets.only(top: 248),
              child: Image.asset(
                "assests/images/group.png",
              ),
            ),
          )
        ],
      ),
    ));
  }

  Widget field(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(top: 72, left: 17),
      margin: EdgeInsets.only(left: 17),
      width: 358,
      // height: 22,
      child: Text(
        "Your Mobile Number",
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: min(
                17,
                min(MediaQuery.of(context).size.width / 23,
                    MediaQuery.of(context).size.height / 47)),
            color: Colors.white,
            letterSpacing: -.15),
      ),
    );
  }

  Widget textArea(BuildContext context) {
    return Container(
      width: 358,
      // height: 51,
      margin: EdgeInsets.only(left: 17, right: 15),
      // margin: EdgeInsets.only(top: 6, left: 17, right: 15),
      child: Container(
        child: TextField(
          style: TextStyle(color: Colors.white, letterSpacing: 2),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF2C2C2E),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              hintText: 'eg. +91 673 827 3728',
              hintStyle: TextStyle(
                  color: Color(0xfff8e8e93),
                  fontSize: min(
                      17,
                      min(MediaQuery.of(context).size.width / 23,
                          MediaQuery.of(context).size.height / 47)),
                  fontWeight: FontWeight.w400,
                  letterSpacing: -.41),
              labelStyle: TextStyle(
                  color: Color(0xfff8e8e93),
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -.41),
              suffixIcon: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    print("clicked");
                  },
                  child: Container(
                    width: 37,
                    // height: 47,
                    decoration: BoxDecoration(
                      color: Color(0xFFF9C63E5),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset("assests/images/lefticon.png"),
                  ),
                ),
              )),
        ),
      ),
    );
  }

  Widget Footnote(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(top: 23, left: 18, right: 19),
      // width: 353,
      // height: 21,
      child: Text(
        "You will recieve a call from us. ",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: min(
                16,
                min(MediaQuery.of(context).size.width / 18,
                    MediaQuery.of(context).size.height / 33)),
            fontWeight: FontWeight.w500,
            color: Color(0xfff636366),
            letterSpacing: .46),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: const Color(0xFFF1C1C1E),
            //constraints: BoxConstraints(maxHeight: 844, maxWidth: 390),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 2419,
                    child: Column(
                      children: [
                        Crd(context),
                      ],
                    )),
                Expanded(
                  flex: 342,
                  child: Container(),
                ),
                Expanded(
                  flex: 104,
                  child: field(context),
                ),
                Expanded(flex: 4, child: Container()),
                Expanded(
                  flex: 242,
                  child: textArea(context),
                ),
                Expanded(
                  flex: 109,
                  child: Container(),
                ),
                Expanded(
                  flex: 150,
                  child: Footnote(context),
                ),
                Expanded(
                  flex: 476,
                  child: Container(),
                ),
              ],
            )),
      ),
    );
  }
}

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//             color: const Color(0xFFF1C1C1E),
//             constraints: BoxConstraints(maxHeight: 844, maxWidth: 390),
//             child: Column(
//               children: [
//                 Crd(context),
//                 field(context),
//                 textArea(context),
//                 Footnote(context)
//               ],
//             )),
//       ),
//     );
//   }
// }
