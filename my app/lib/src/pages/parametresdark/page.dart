import 'package:flutter/material.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:collection/collection.dart';
import 'package:myapp/src/components/index.dart';
import 'package:myapp/auth/auth_state.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:teta_cms/teta_cms.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter_named/font_awesome_flutter_named.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PageParametresDARK extends StatefulWidget {
  const PageParametresDARK({
    Key? key,
  }) : super(key: key);

  @override
  _StateParametresDARK createState() => _StateParametresDARK();
}

class _StateParametresDARK extends AuthState<PageParametresDARK>
    with SingleTickerProviderStateMixin {
  int filterChange = null;
  String search = '0';
  String cMSKey = 'filter';
  String cMSValue = 'for_you';
  int changePage = null;

  var datasets = <String, dynamic>{};
  int index = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    TetaCMS.instance.analytics.insertEvent(
      TetaAnalyticsType.usage,
      'App usage: view page',
      <String, dynamic>{
        'name': "ParametresDARK",
      },
      isUserIdPreferableIfExists: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            height: 250.h,
            decoration: BoxDecoration(
              color: Color(0xFF020552).withOpacity(1),
              border: Border(
                left: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000).withOpacity(1)),
                top: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000).withOpacity(1)),
                right: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000).withOpacity(1)),
                bottom: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000).withOpacity(1)),
              ),
            ),
            child: SafeArea(
              left: false,
              top: true,
              right: false,
              bottom: false,
              child: IndexedStack(
                index: changePage,
                children: [
                  ListView(
                    reverse: false,
                    primary: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.maxFinite,
                            height: 70,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 24,
                                right: 24,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    r'''Paramètres''',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFFFFFFF).withOpacity(1),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 32,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                  ),
                                  GestureDetector(
                                    onTap: () async {},
                                    onDoubleTap: () async {},
                                    onLongPress: () async {},
                                    child: Icon(
                                      MdiIcons.fromString('home'),
                                      size: 32,
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 25,
                              bottom: 7,
                            ),
                            child: Text(
                              r'''Apprence''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              height: 40,
                              child: Container(
                                margin: EdgeInsets.zero,
                                padding: EdgeInsets.zero,
                                width: double.maxFinite,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFF333749).withOpacity(1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(17),
                                    topRight: Radius.circular(17),
                                    bottomRight: Radius.circular(17),
                                    bottomLeft: Radius.circular(17),
                                  ),
                                  border: Border(
                                    left: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color:
                                            Color(0xFF000000).withOpacity(1)),
                                    top: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color:
                                            Color(0xFF000000).withOpacity(1)),
                                    right: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color:
                                            Color(0xFF000000).withOpacity(1)),
                                    bottom: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color:
                                            Color(0xFF000000).withOpacity(1)),
                                  ),
                                ),
                                child: Container(
                                  margin: EdgeInsets.zero,
                                  padding: EdgeInsets.zero,
                                  width: double.maxFinite,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF333749).withOpacity(1),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(17),
                                      topRight: Radius.circular(17),
                                      bottomRight: Radius.circular(17),
                                      bottomLeft: Radius.circular(17),
                                    ),
                                    border: Border(
                                      left: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                          color:
                                              Color(0xFF000000).withOpacity(1)),
                                      top: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                          color:
                                              Color(0xFF000000).withOpacity(1)),
                                      right: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                          color:
                                              Color(0xFF000000).withOpacity(1)),
                                      bottom: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                          color:
                                              Color(0xFF000000).withOpacity(1)),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 12.5,
                                      ),
                                      child: Text(
                                        r'''Thème de l'application''',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Color(0xFFFFFFFF)
                                                .withOpacity(1),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            fontStyle: FontStyle.normal,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        textAlign: TextAlign.left,
                                        textDirection: TextDirection.ltr,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40,
                              top: 5,
                              right: 20,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              height: 110,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Radio<String>(
                                            value: '2',
                                            groupValue: '1',
                                            onChanged: (final value) async {},
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: TextButton(
                                          onPressed: () async {
                                            await Navigator.push<void>(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    PageLoadDARK(),
                                              ),
                                            );
                                            await Future<void>.delayed(
                                                Duration(milliseconds: 3000));
                                          },
                                          onLongPress: () async {},
                                          child: Text(
                                            r'''Thème Clair''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Color(0xFFFFFFFF)
                                                    .withOpacity(1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            textDirection: TextDirection.ltr,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Radio<String>(
                                            value: '1',
                                            groupValue: '1',
                                            onChanged: (final value) async {},
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: TextButton(
                                          onPressed: () async {},
                                          onLongPress: () async {},
                                          child: Text(
                                            r'''Thème Sombre''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Color(0xFFFFFFFF)
                                                    .withOpacity(1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            textDirection: TextDirection.ltr,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Radio<String>(
                                            value: '2',
                                            groupValue: '1',
                                            onChanged: (final value) async {},
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: TextButton(
                                          onPressed: () async {},
                                          onLongPress: () async {},
                                          child: Text(
                                            r'''Thème De L'Appareil''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Color(0xFFFFFFFF)
                                                    .withOpacity(1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            textDirection: TextDirection.ltr,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 25,
                              bottom: 7,
                            ),
                            child: Text(
                              r'''Notifications''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              height: 40,
                              child: Container(
                                margin: EdgeInsets.zero,
                                padding: EdgeInsets.zero,
                                width: double.maxFinite,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFF333749).withOpacity(1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(17),
                                    topRight: Radius.circular(17),
                                    bottomRight: Radius.circular(17),
                                    bottomLeft: Radius.circular(17),
                                  ),
                                  border: Border(
                                    left: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color:
                                            Color(0xFF000000).withOpacity(1)),
                                    top: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color:
                                            Color(0xFF000000).withOpacity(1)),
                                    right: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color:
                                            Color(0xFF000000).withOpacity(1)),
                                    bottom: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color:
                                            Color(0xFF000000).withOpacity(1)),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 12.5,
                                        ),
                                        child: Text(
                                          r'''Autoriser les notifications push''',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Color(0xFFFFFFFF)
                                                  .withOpacity(1),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              fontStyle: FontStyle.normal,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                          textAlign: TextAlign.left,
                                          textDirection: TextDirection.ltr,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40,
                              top: 5,
                              right: 20,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              height: 75,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Radio<String>(
                                            value: '1',
                                            groupValue: '1',
                                            onChanged: (final value) async {
                                              setState(() {
                                                filterChange = '''''';
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 15,
                                            top: 4,
                                          ),
                                          child: Text(
                                            r'''Oui''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Color(0xFFFFFFFF)
                                                    .withOpacity(1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            textDirection: TextDirection.ltr,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Radio<String>(
                                            value: '',
                                            groupValue: '1',
                                            onChanged: (final value) async {},
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 15,
                                            top: 4,
                                          ),
                                          child: Text(
                                            r'''Non''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Color(0xFFFFFFFF)
                                                    .withOpacity(1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            textDirection: TextDirection.ltr,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              height: 40,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.zero,
                                    padding: EdgeInsets.zero,
                                    width: double.maxFinite,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF333749).withOpacity(1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(17),
                                        topRight: Radius.circular(17),
                                        bottomRight: Radius.circular(17),
                                        bottomLeft: Radius.circular(17),
                                      ),
                                      border: Border(
                                        left: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        top: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        right: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        bottom: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 12.5,
                                            ),
                                            child: Text(
                                              r'''Recevoir les notifications des lives KC''',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Color(0xFFFFFFFF)
                                                      .withOpacity(1),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  fontStyle: FontStyle.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                              textAlign: TextAlign.left,
                                              textDirection: TextDirection.ltr,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40,
                              top: 5,
                              right: 20,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              height: 75,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Radio<String>(
                                            value: '1',
                                            groupValue: '1',
                                            onChanged: (final value) async {
                                              setState(() {
                                                filterChange = '''''';
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 15,
                                            top: 4,
                                          ),
                                          child: Text(
                                            r'''Oui''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Color(0xFFFFFFFF)
                                                    .withOpacity(1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            textDirection: TextDirection.ltr,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Radio<String>(
                                            value: '',
                                            groupValue: '1',
                                            onChanged: (final value) async {},
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 15,
                                            top: 4,
                                          ),
                                          child: Text(
                                            r'''Non''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Color(0xFFFFFFFF)
                                                    .withOpacity(1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            textDirection: TextDirection.ltr,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              height: 40,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.zero,
                                    padding: EdgeInsets.zero,
                                    width: double.maxFinite,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF333749).withOpacity(1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(17),
                                        topRight: Radius.circular(17),
                                        bottomRight: Radius.circular(17),
                                        bottomLeft: Radius.circular(17),
                                      ),
                                      border: Border(
                                        left: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        top: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        right: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        bottom: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 12.5,
                                            ),
                                            child: Text(
                                              r'''Recevoir les notifications des articles''',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Color(0xFFFFFFFF)
                                                      .withOpacity(1),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  fontStyle: FontStyle.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                              textAlign: TextAlign.left,
                                              textDirection: TextDirection.ltr,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40,
                              top: 5,
                              right: 20,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              height: 75,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Radio<String>(
                                            value: '',
                                            groupValue: '1',
                                            onChanged: (final value) async {
                                              setState(() {
                                                filterChange = '''''';
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 15,
                                            top: 4,
                                          ),
                                          child: Text(
                                            r'''Oui''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Color(0xFFFFFFFF)
                                                    .withOpacity(1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            textDirection: TextDirection.ltr,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Radio<String>(
                                            value: '1',
                                            groupValue: '1',
                                            onChanged: (final value) async {},
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 15,
                                            top: 4,
                                          ),
                                          child: Text(
                                            r'''Non''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Color(0xFFFFFFFF)
                                                    .withOpacity(1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            textDirection: TextDirection.ltr,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              height: 55,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.zero,
                                    padding: EdgeInsets.zero,
                                    width: double.maxFinite,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF333749).withOpacity(1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(17),
                                        topRight: Radius.circular(17),
                                        bottomRight: Radius.circular(17),
                                        bottomLeft: Radius.circular(17),
                                      ),
                                      border: Border(
                                        left: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        top: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        right: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        bottom: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 12.5,
                                            ),
                                            child: SizedBox(
                                              width: 330,
                                              height: 150,
                                              child: Center(
                                                child: Text(
                                                  r'''Recevoir les notifications des prochains matchs
''',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: Color(0xFFFFFFFF)
                                                          .withOpacity(1),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      decoration:
                                                          TextDecoration.none,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                  textDirection:
                                                      TextDirection.ltr,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40,
                              top: 5,
                              right: 20,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Radio<String>(
                                            value: '1',
                                            groupValue: '1',
                                            onChanged: (final value) async {
                                              setState(() {
                                                filterChange = '''''';
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 15,
                                            top: 4,
                                          ),
                                          child: Text(
                                            r'''Oui''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Color(0xFFFFFFFF)
                                                    .withOpacity(1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            textDirection: TextDirection.ltr,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Radio<String>(
                                            value: '0',
                                            groupValue: '1',
                                            onChanged: (final value) async {},
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 15,
                                            top: 4,
                                          ),
                                          child: Text(
                                            r'''Non''',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                color: Color(0xFFFFFFFF)
                                                    .withOpacity(1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                decoration: TextDecoration.none,
                                              ),
                                            ),
                                            textAlign: TextAlign.left,
                                            textDirection: TextDirection.ltr,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 25,
                              bottom: 7,
                            ),
                            child: Text(
                              r'''Autres''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              height: 55,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.zero,
                                    padding: EdgeInsets.zero,
                                    width: double.maxFinite,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF333749).withOpacity(1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(17),
                                        topRight: Radius.circular(17),
                                        bottomRight: Radius.circular(17),
                                        bottomLeft: Radius.circular(17),
                                      ),
                                      border: Border(
                                        left: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        top: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        right: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        bottom: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: TextButton(
                                            onPressed: () async {
                                              await Navigator.push<void>(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      PageLoadDARK(),
                                                ),
                                              );
                                              await Future<void>.delayed(
                                                  Duration(milliseconds: 3000));
                                              await Navigator.push<void>(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      PageLoginDARK(),
                                                ),
                                              );
                                            },
                                            onLongPress: () async {},
                                            child: Text(
                                              r'''Connection équipe''',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Color(0xFFFFFFFF)
                                                      .withOpacity(1),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  fontStyle: FontStyle.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                              textAlign: TextAlign.left,
                                              textDirection: TextDirection.ltr,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              height: 55,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.zero,
                                    padding: EdgeInsets.zero,
                                    width: double.maxFinite,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF333749).withOpacity(1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(17),
                                        topRight: Radius.circular(17),
                                        bottomRight: Radius.circular(17),
                                        bottomLeft: Radius.circular(17),
                                      ),
                                      border: Border(
                                        left: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        top: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        right: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        bottom: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 12.5,
                                            ),
                                            child: Text(
                                              r'''Support''',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Color(0xFFFFFFFF)
                                                      .withOpacity(1),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  fontStyle: FontStyle.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                              textAlign: TextAlign.left,
                                              textDirection: TextDirection.ltr,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              height: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.zero,
                                    padding: EdgeInsets.zero,
                                    width: double.maxFinite,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF333749).withOpacity(1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(17),
                                        topRight: Radius.circular(17),
                                        bottomRight: Radius.circular(17),
                                        bottomLeft: Radius.circular(17),
                                      ),
                                      border: Border(
                                        left: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        top: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        right: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                        bottom: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                            color: Color(0xFF000000)
                                                .withOpacity(1)),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: TextButton(
                                            onPressed: () async {
                                              await showModalBottomSheet<void>(
                                                context: context,
                                                builder: (context) =>
                                                    PageIddark(),
                                              );
                                            },
                                            onLongPress: () async {},
                                            child: Text(
                                              r'''ID de l'application''',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Color(0xFFFFFFFF)
                                                      .withOpacity(1),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  fontStyle: FontStyle.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                              textAlign: TextAlign.left,
                                              textDirection: TextDirection.ltr,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 95,
                              right: 20,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              height: 30,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 12.5,
                                ),
                                child: Text(
                                  r'''©KC Mattbattou | 2022-''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
