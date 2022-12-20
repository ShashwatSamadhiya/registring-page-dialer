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
    return Container(
      width: 390,
      height: 508,
      color: Colors.black,
      child: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(top: 69, left: 16),
              width: 358,
              height: 102,
              child: RichText(
                text: TextSpan(
                    text: 'Activate ',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 28,
                        height: 1.18),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Call Recording ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 28,
                              height: 1.18
                              //letterSpacing: .36
                              )),
                      TextSpan(
                          text: 'and ',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 28,
                              height: 1.18
                              //letterSpacing: .36
                              )),
                      TextSpan(
                          text: 'Cheap International rates ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 28,
                              height: 1.18
                              //letterSpacing: .36
                              )),
                      TextSpan(
                          text: 'on your number',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 28,
                              height: 1.18
                              // letterSpacing: .36
                              )),
                    ]),
              )),
          Container(
            margin: EdgeInsets.only(left: 16, top: 195),
            width: 251,
            height: 21,
            child: Text(
              "See how it works? ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFFF636366),
                letterSpacing: .36,
              ),
            ),
          ),
          Container(
            width: 390,
            height: 221,
            margin: EdgeInsets.only(top: 248),
            child: Image.asset(
              "assests/images/group.png",
            ),
          ),
        ],
      ),
    );
  }

  Widget field(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 72, left: 17),
      width: 358,
      height: 22,
      child: Stack(children: const [
        Text(
          "Your Mobile Number",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 17,
              color: Colors.white,
              letterSpacing: -.15),
        ),
      ]),
    );
  }

  Widget textArea(BuildContext context) {
    return Container(
      width: 358,
      height: 51,
      margin: EdgeInsets.only(top: 6, left: 17, right: 15),
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
                  fontSize: 17,
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
                    width: 47,
                    height: 47,
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
      margin: EdgeInsets.only(top: 23, left: 18, right: 19),
      width: 353,
      height: 21,
      child: Text(
        "You will recieve a call from us. ",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xfff636366),
            letterSpacing: .46),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: const Color(0xFFF1C1C1E),
            constraints: BoxConstraints(maxHeight: 844, maxWidth: 390),
            child: Column(
              children: [
                Crd(context),
                field(context),
                textArea(context),
                Footnote(context)
              ],
            )),
      ),
    );
  }
}
