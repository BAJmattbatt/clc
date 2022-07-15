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

class PageArticleDetailsVA2 extends StatefulWidget {
  const PageArticleDetailsVA2({
    Key? key,
    this.articleImage =
        '''https://dtlaca8pgqtx.cloudfront.net/player/1e239c43-37a5-456c-a405-eb6c226eb96e.png''',
    this.category = '''Valorant''',
    this.title = '''Amine "Amilwa" Saidi''',
    this.authorImage =
        '''https://images.cults3d.com/4QqRV9kLYYEuw9ur_X3yjQl1sjk=/516x516/https://files.cults3d.com/uploaders/15024335/illustration-file/a86d53e4-2bd9-4a8f-9550-986686c3131a/gi0mAjIh_400x400.png''',
    this.authorName = '''Équipe Valorant''',
    this.articleDate = '''Rejoint le °°/°°/2022''',
    this.articleDescription =
        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
    this.videoYTID = '''I-VsisgVkHw''',
    this.titreBan1 = '''YouTube''',
    this.titreBan2 = '''Twitch''',
    this.titreBan3 = '''Twitter''',
    this.ban1 =
        '''https://i2.wp.com/www.grapheine.com/wp-content/uploads/2017/08/youtube-new-logo2.jpg?fit=1950%2C1200&quality=90&strip=all&ssl=1''',
    this.ban2 =
        '''https://blog.twitch.tv/assets/uploads/generic-email-header-1.jpg''',
    this.ban3 =
        '''https://jeuxvideo.rds.ca/wp-content/uploads/sites/2/2021/06/twitter-logo.jpg''',
  }) : super(key: key);

  final String articleImage;
  final String category;
  final String title;
  final String authorImage;
  final String authorName;
  final String articleDate;
  final String articleDescription;
  final String videoYTID;
  final String titreBan1;
  final String titreBan2;
  final String titreBan3;
  final String ban1;
  final String ban2;
  final String ban3;

  @override
  _StateArticleDetailsVA2 createState() => _StateArticleDetailsVA2();
}

class _StateArticleDetailsVA2 extends AuthState<PageArticleDetailsVA2>
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
        'name': "ArticleDetailsVA2",
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
          SizedBox(
            width: double.maxFinite,
            height: 4000,
            child: ListView(
              reverse: false,
              primary: true,
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                Stack(
                  children: [
                    Image.network(
                      '''${widget.articleImage}''',
                      height: 60.h,
                      fit: BoxFit.cover,
                    ),
                    Opacity(
                      opacity: 1,
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.maxFinite,
                        height: 150.h,
                        decoration: BoxDecoration(
                          color: Color(0xFF000000).withOpacity(1),
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
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 300,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 24,
                              right: 24,
                              bottom: 24,
                            ),
                            child: Column(
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
                                  child: Text(
                                    '''${widget.category}''',
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
                                  '''${widget.title}''',
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
                          Container(
                            margin: EdgeInsets.zero,
                            padding: const EdgeInsets.only(
                              left: 16,
                              top: 24,
                              right: 16,
                            ),
                            width: double.maxFinite,
                            height: 130.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF).withOpacity(1),
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.maxFinite,
                                  height: 8.h,
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(26),
                                          topRight: Radius.circular(26),
                                          bottomRight: Radius.circular(26),
                                          bottomLeft: Radius.circular(26),
                                        ),
                                        child: Image.network(
                                          '''${widget.authorImage}''',
                                          width: 48,
                                          height: 48,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 16,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '''${widget.authorName}''',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Color(0xFF000000)
                                                      .withOpacity(1),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                  fontStyle: FontStyle.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                              textAlign: TextAlign.left,
                                              textDirection: TextDirection.ltr,
                                            ),
                                            Text(
                                              '''${widget.articleDate}''',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Color(0xFF000000)
                                                      .withOpacity(1),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 13,
                                                  fontStyle: FontStyle.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                              textAlign: TextAlign.left,
                                              textDirection: TextDirection.ltr,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 16,
                                  ),
                                  child: Text(
                                    '''${widget.articleDescription}''',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFF000000).withOpacity(1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 15,
                                  ),
                                  child: Text(
                                    r'''Liens''',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFF000000).withOpacity(1),
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
                                Container(
                                  margin: EdgeInsets.zero,
                                  padding: EdgeInsets.zero,
                                  width: double.maxFinite,
                                  height: 1000,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFFFFF).withOpacity(1),
                                    border: Border(
                                      left: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                          color:
                                              Color(0xFFFFFFFF).withOpacity(1)),
                                      top: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                          color:
                                              Color(0xFFFFFFFF).withOpacity(1)),
                                      right: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                          color:
                                              Color(0xFFFFFFFF).withOpacity(1)),
                                      bottom: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                          color:
                                              Color(0xFFFFFFFF).withOpacity(1)),
                                    ),
                                  ),
                                  child: ListView(
                                    reverse: false,
                                    primary: true,
                                    physics:
                                        const AlwaysScrollableScrollPhysics(),
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 20,
                                            ),
                                            child: Text(
                                              '''${widget.titreBan1}''',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Color(0xFF000000)
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
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                            ),
                                            child: GestureDetector(
                                              onTap: () async {
                                                if (await canLaunchUrlString(
                                                    '''https://youtube.com''')) {
                                                  await launchUrlString(
                                                    '''https://youtube.com''',
                                                    mode:
                                                        LaunchMode.inAppWebView,
                                                  );
                                                }
                                              },
                                              onDoubleTap: () async {},
                                              onLongPress: () async {},
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20),
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                ),
                                                child: Image.network(
                                                  '''${widget.ban1}''',
                                                  width: double.maxFinite,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 20,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 20,
                                              ),
                                              child: Text(
                                                '''${widget.titreBan2}''',
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    color: Color(0xFF000000)
                                                        .withOpacity(1),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    fontStyle: FontStyle.normal,
                                                    decoration:
                                                        TextDecoration.none,
                                                  ),
                                                ),
                                                textAlign: TextAlign.left,
                                                textDirection:
                                                    TextDirection.ltr,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                              ),
                                              child: GestureDetector(
                                                onTap: () async {
                                                  if (await canLaunchUrlString(
                                                      '''https://youtube.com''')) {
                                                    await launchUrlString(
                                                      '''https://youtube.com''',
                                                      mode: LaunchMode
                                                          .inAppWebView,
                                                    );
                                                  }
                                                },
                                                onDoubleTap: () async {},
                                                onLongPress: () async {},
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20),
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                  ),
                                                  child: Image.network(
                                                    '''${widget.ban2}''',
                                                    width: double.maxFinite,
                                                    height: 150,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 20,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 20,
                                              ),
                                              child: Text(
                                                '''${widget.titreBan3}''',
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    color: Color(0xFF000000)
                                                        .withOpacity(1),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    fontStyle: FontStyle.normal,
                                                    decoration:
                                                        TextDecoration.none,
                                                  ),
                                                ),
                                                textAlign: TextAlign.left,
                                                textDirection:
                                                    TextDirection.ltr,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                              ),
                                              child: GestureDetector(
                                                onTap: () async {
                                                  if (await canLaunchUrlString(
                                                      '''https://twitter.com''')) {
                                                    await launchUrlString(
                                                      '''https://twitter.com''',
                                                      mode: LaunchMode
                                                          .inAppWebView,
                                                    );
                                                  }
                                                },
                                                onDoubleTap: () async {},
                                                onLongPress: () async {},
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20),
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                  ),
                                                  child: Image.network(
                                                    '''${widget.ban3}''',
                                                    width: double.maxFinite,
                                                    height: 150,
                                                    fit: BoxFit.cover,
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SafeArea(
                      left: false,
                      top: true,
                      right: false,
                      bottom: false,
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () async {
                              Navigator.of(context, rootNavigator: true)
                                  .pop(null);
                            },
                            onDoubleTap: () async {},
                            onLongPress: () async {},
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 24,
                                top: 24,
                              ),
                              padding: const EdgeInsets.only(
                                left: 8,
                                top: 8,
                                right: 8,
                                bottom: 8,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                  bottomRight: Radius.circular(24),
                                  bottomLeft: Radius.circular(24),
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
                              child: Icon(
                                MdiIcons.fromString('keyboard-backspace'),
                                size: 24,
                                color: Color(0xFFFFFFFF).withOpacity(1),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              Navigator.of(context, rootNavigator: true)
                                  .pop(null);
                            },
                            onDoubleTap: () async {},
                            onLongPress: () async {},
                            child: Opacity(
                              opacity: 1,
                              child: Container(
                                margin: const EdgeInsets.only(
                                  left: 24,
                                  top: 24,
                                ),
                                padding: const EdgeInsets.only(
                                  left: 8,
                                  top: 8,
                                  right: 8,
                                  bottom: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F1F1).withOpacity(1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(24),
                                    topRight: Radius.circular(24),
                                    bottomRight: Radius.circular(24),
                                    bottomLeft: Radius.circular(24),
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
                                child: Icon(
                                  MdiIcons.fromString('plus'),
                                  size: 24,
                                  color: Color(0xFFFFFFFF).withOpacity(1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
