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

class PageLoginDARK extends StatefulWidget {
  const PageLoginDARK({
    Key? key,
  }) : super(key: key);

  @override
  _StateLoginDARK createState() => _StateLoginDARK();
}

class _StateLoginDARK extends AuthState<PageLoginDARK>
    with SingleTickerProviderStateMixin {
  String email = '0';
  String password = '0';
  String status = '0';

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
        'name': "LoginDARK",
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
            height: 150.h,
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
              left: true,
              top: true,
              right: true,
              bottom: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 20,
                        ),
                        child: Text(
                          r'''Login''',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFFFFFFFF).withOpacity(1),
                              fontWeight: FontWeight.w800,
                              fontSize: 30,
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
                          left: 200,
                          top: 30,
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageParametresDARK(),
                                ),
                              );
                            },
                            onLongPress: () async {},
                            child: Icon(
                              faIconNameMapping['arrowLeft'],
                              size: 30,
                              color: Color(0xFFFFFFFF).withOpacity(1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 100.w,
                    height: 12.5.h,
                    child: Text(
                      r'''''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xFFFFFFFF).withOpacity(1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
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
                    ),
                    child: Text(
                      r'''Adresse E-Mail''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xFFFFFFFF).withOpacity(1),
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      right: 25,
                      bottom: 8,
                    ),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0xFF040997).withOpacity(1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                      border: null,
                    ),
                    child: TextField(
                      onChanged: (String value) async {
                        setState(() {
                          email = value;
                        });
                      },
                      onSubmitted: (String value) async {},
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF040997).withOpacity(1),
                        counterStyle: TextStyle(
                          color: Color(0xFF040997).withOpacity(1),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0.4),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0.4),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                        ),
                        hintText: r'''E-Mail
''',
                        contentPadding: const EdgeInsets.only(
                          left: 16,
                          right: 25,
                        ),
                      ),
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xFFFFFFFF).withOpacity(1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                      maxLines: 1,
                      minLines: 1,
                      maxLength: null,
                      obscureText: false,
                      showCursor: true,
                      autocorrect: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      r'''Mot De Passe''',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xFFFFFFFF).withOpacity(1),
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      right: 25,
                      bottom: 8,
                    ),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0xFF040997).withOpacity(1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                      border: null,
                    ),
                    child: TextField(
                      onChanged: (String value) async {
                        setState(() {
                          password = value;
                        });
                      },
                      onSubmitted: (String value) async {},
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF040997).withOpacity(1),
                        counterStyle: TextStyle(
                          color: Color(0xFF040997).withOpacity(1),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0.3),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0.3),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                        ),
                        hintText: r'''Mot De Passe ''',
                        contentPadding: const EdgeInsets.only(
                          left: 16,
                          right: 25,
                        ),
                      ),
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xFFFFFFFF).withOpacity(1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                      maxLines: 1,
                      minLines: 1,
                      maxLength: null,
                      obscureText: true,
                      showCursor: true,
                      autocorrect: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        await Future<void>.delayed(
                            Duration(milliseconds: 3000));
                      },
                      onLongPress: () async {},
                      child: Container(
                          width: double.maxFinite,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Color(0xFF000000).withOpacity(1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                            border: null,
                          ),
                          child: Center(
                            child: Text(
                              '''Se Connecter''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 55,
                      bottom: 20,
                    ),
                    child: Center(
                      child: Icon(
                        faIconNameMapping['triangleExclamation'],
                        size: 50,
                        color: Color(0xFFA50202).withOpacity(1),
                      ),
                    ),
                  ),
                  Text(
                    r'''Cet espace est uniquement réservé aux administrateurs, rédacteurs et toute autre personne liée au bon fonctionement de l'application.''',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFFFFFFFF).withOpacity(1),
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
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
