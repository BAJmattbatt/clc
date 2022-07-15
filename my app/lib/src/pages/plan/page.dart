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

class PagePlan extends StatefulWidget {
  const PagePlan({
    Key? key,
  }) : super(key: key);

  @override
  _StatePlan createState() => _StatePlan();
}

class _StatePlan extends AuthState<PagePlan>
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
        'name': "Plan",
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
            height: 100000,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF).withOpacity(1),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                r'''Joueurs''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Color(0xFF000000).withOpacity(1),
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
                                onTap: () async {
                                  setState(() {
                                    changePage = '''1''';
                                  });
                                },
                                onDoubleTap: () async {},
                                onLongPress: () async {},
                                child: Icon(
                                  MdiIcons.fromString('bookshelf'),
                                  size: 32,
                                  color: Color(0xFF000000).withOpacity(1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.zero,
                        child: Text(
                          r'''''',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF000000).withOpacity(1),
                              fontWeight: FontWeight.w400,
                              fontSize: 0,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
