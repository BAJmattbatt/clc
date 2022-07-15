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

class PageArticleDetailsDARK extends StatefulWidget {
  const PageArticleDetailsDARK({
    Key? key,
    this.articleImage =
        '''https://images.unsplash.com/photo-1653308504349-050f16e8e144?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470''',
    this.category = '''Cat. *''',
    this.title =
        '''L'équipe Valorant termine quatrième de VLR après la défaite 3-2 contre Pitality''',
    this.authorImage =
        '''https://images.unsplash.com/photo-1648737153811-69a6d8c528bf?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2970''',
    this.authorName = '''John White''',
    this.articleDate = '''00/00/0000''',
    this.articleDescription =
        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
    this.articleImageOne =
        '''https://images.unsplash.com/photo-1653306638703-0e294f5b64fd?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1394''',
    this.articleImageTwo =
        '''https://images.unsplash.com/photo-1653271785435-b58d63a86951?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2970''',
    this.videoYTID = '''I-VsisgVkHw''',
  }) : super(key: key);

  final String articleImage;
  final String category;
  final String title;
  final String authorImage;
  final String authorName;
  final String articleDate;
  final String articleDescription;
  final String articleImageOne;
  final String articleImageTwo;
  final String videoYTID;

  @override
  _StateArticleDetailsDARK createState() => _StateArticleDetailsDARK();
}

class _StateArticleDetailsDARK extends AuthState<PageArticleDetailsDARK>
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
        'name': "ArticleDetailsDARK",
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
            height: 100.h,
            child: ListView(
              reverse: false,
              primary: true,
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                Stack(
                  children: [
                    Image.network(
                      '''${widget.articleImage}''',
                      width: double.maxFinite,
                      height: 400,
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
                        top: 200,
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
                                    color: Color(0xFF020552).withOpacity(1),
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
                                        color: Color(0xFFFFFFFF).withOpacity(1),
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
                            height: 110.h,
                            decoration: BoxDecoration(
                              color: Color(0xFF020552).withOpacity(1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                              border: Border(
                                left: BorderSide(
                                    width: 01,
                                    color: Color(0xFFFFFFFF).withOpacity(1)),
                                top: BorderSide(
                                    width: 01,
                                    color: Color(0xFFFFFFFF).withOpacity(1)),
                                right: BorderSide(
                                    width: 01,
                                    color: Color(0xFFFFFFFF).withOpacity(1)),
                                bottom: BorderSide(
                                    width: 01,
                                    color: Color(0xFFFFFFFF).withOpacity(1)),
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
                                                  color: Color(0xFFFFFFFF)
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
                                                  color: Color(0xFFFFFFFF)
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
                                        color: Color(0xFFFFFFFF).withOpacity(1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ),
                                SizedBox(
                                  width: double.maxFinite,
                                  height: 20.h,
                                  child: GridView(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisSpacing: 2,
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 2,
                                      childAspectRatio: 1,
                                    ),
                                    shrinkWrap: true,
                                    primary: false,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16,
                                          bottom: 16,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16),
                                            bottomRight: Radius.circular(16),
                                            bottomLeft: Radius.circular(16),
                                          ),
                                          child: Image.network(
                                            '''${widget.articleImageOne}''',
                                            width: double.maxFinite,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16,
                                          bottom: 16,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16),
                                            bottomRight: Radius.circular(16),
                                            bottomLeft: Radius.circular(16),
                                          ),
                                          child: Image.network(
                                            '''${widget.articleImageTwo}''',
                                            width: double.maxFinite,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 16,
                                  ),
                                  child: SizedBox(
                                    width: double.maxFinite,
                                    height: 24.h,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16),
                                        bottomRight: Radius.circular(16),
                                        bottomLeft: Radius.circular(16),
                                      ),
                                      child: YoutubePlayerIFrame(
                                        controller: YoutubePlayerController(
                                          initialVideoId:
                                              '''${widget.videoYTID}''',
                                          params: YoutubePlayerParams(
                                            startAt: Duration(seconds: 0),
                                            showControls: false,
                                            showFullscreenButton: false,
                                            loop: false,
                                          ),
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
