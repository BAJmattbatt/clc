import 'package:flutter/material.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:collection/collection.dart';

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

class PageIddark extends StatefulWidget {
  const PageIddark({
    Key? key,
  }) : super(key: key);

  @override
  _StateIddark createState() => _StateIddark();
}

class _StateIddark extends AuthState<PageIddark>
    with SingleTickerProviderStateMixin {
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
        'name': "Iddark",
      },
      isUserIdPreferableIfExists: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      width: double.maxFinite,
      height: 100.h,
      decoration: BoxDecoration(
        color: Color(0xFF020552).withOpacity(1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(0),
          bottomLeft: Radius.circular(0),
        ),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 22,
                ),
                child: Text(
                  r'''ID De L'Application''',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFFFFFFFF).withOpacity(1),
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                      fontStyle: FontStyle.normal,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 7.5.h,
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
              r'''Version de l'application : 0.1''',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color(0xFFFFFFFF).withOpacity(1),
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
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 10,
            ),
            child: Text(
              r'''Date de sortie : ../../20..''',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color(0xFFFFFFFF).withOpacity(1),
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
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Center(
              child: Icon(
                FeatherIconsMap['alert-triangle'],
                size: 40,
                color: Color(0xFFFFFFFF).withOpacity(1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Text(
              r'''Cette application est encore dans ses débuts, il n'est pas impossible de tomber sur des bugs plus ou moins importants... Si vous avez des remarques ou des sugestions à faire vous pouvez me contacter sur Twitter (@Mattbatt1, mes DMs sont ouverts)''',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color(0xFFFFFFFF).withOpacity(1),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
            ),
          ),
        ],
      ),
    );
  }
}
