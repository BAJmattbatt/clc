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

class PageUpcommmatchs extends StatefulWidget {
  const PageUpcommmatchs({
    Key? key,
    this.uArticleImage =
        '''https://images.unsplash.com/photo-1653162143209-a6f100377faf?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1664''',
    this.uCategory = '''Cat. *''',
    this.uTitle = '''Title: You can change this''',
    this.uAuthorImage =
        '''https://images.unsplash.com/photo-1653161927204-62a515d5c64f?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1665''',
    this.uAuthorName = '''Author Name''',
    this.uArticleDate = '''00/00/0000''',
  }) : super(key: key);

  final String uArticleImage;
  final String uCategory;
  final String uTitle;
  final String uAuthorImage;
  final String uAuthorName;
  final String uArticleDate;

  @override
  _StateUpcommmatchs createState() => _StateUpcommmatchs();
}

class _StateUpcommmatchs extends AuthState<PageUpcommmatchs>
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
        'name': "Upcommmatchs",
      },
      isUserIdPreferableIfExists: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(),
          child: Card(
            elevation: 1,
            color: Color(0xFFFFFFFF).withOpacity(1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                      ),
                      child: Image.network(
                        '''${widget.uArticleImage}''',
                        width: double.maxFinite,
                        height: 30.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Opacity(
                      opacity: 1,
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.maxFinite,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: Color(0xFF000000).withOpacity(1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
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
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 30.h,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          right: 24,
                          bottom: 24,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                bottom: 16,
                              ),
                              padding: const EdgeInsets.only(
                                left: 8,
                                top: 4,
                                right: 8,
                                bottom: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
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
                              child: Text(
                                '''${widget.uCategory}''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Color(0xFF000000).withOpacity(1),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                            Text(
                              '''${widget.uTitle}''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF).withOpacity(1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 16,
                    bottom: 16,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '''${widget.uAuthorName}''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF000000).withOpacity(1),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                          ),
                          Text(
                            '''${widget.uArticleDate}''',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF000000).withOpacity(1),
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
