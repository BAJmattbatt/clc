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

class PageHomeA0 extends StatefulWidget {
  const PageHomeA0({
    Key? key,
  }) : super(key: key);

  @override
  _StateHomeA0 createState() => _StateHomeA0();
}

class _StateHomeA0 extends AuthState<PageHomeA0>
    with SingleTickerProviderStateMixin {
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
        'name': "HomeA0",
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
                                r'''Karmine Corp''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Color(0xFF000000).withOpacity(1),
                                    fontWeight: FontWeight.w800,
                                    fontSize: 30,
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
                                  MdiIcons.fromString('bookmark-multiple'),
                                  size: 30,
                                  color: Color(0xFF000000).withOpacity(1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TetaFutureBuilder(
                          future: TetaCMS.instance.client.getCollection(
                            '''62c21776ac1bb7f47d45448d''',
                            filters: [
                              Filter('''${cMSKey}''', '''${cMSValue}''')
                            ],
                            limit: 30,
                          ),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            final list = snapshot.data as List<dynamic>?;
                            datasets['Cms fetch'] = list ?? const <dynamic>[];
                            var index = 0;

                            return SizedBox(
                              width: double.maxFinite,
                              height: 80.h,
                              child: Builder(
                                builder: (context) {
                                  return ListView.builder(
                                    reverse: false,
                                    physics:
                                        const AlwaysScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount:
                                        this.datasets['Cms fetch'].length > 0
                                            ? this.datasets['Cms fetch'].length
                                            : 0,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                          top: 24,
                                        ),
                                        child: GestureDetector(
                                          onTap: () async {
                                            await Navigator.push<void>(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    PageArticleDetailsVA2(
                                                  articleImage: datasets[
                                                                  'Cms fetch']
                                                              ?[index]
                                                          ?['article_image'] ??
                                                      '',
                                                  category:
                                                      datasets['Cms fetch']
                                                                  ?[index]
                                                              ?['category'] ??
                                                          '',
                                                  title: datasets['Cms fetch']
                                                          ?[index]?['title'] ??
                                                      '',
                                                  authorImage: datasets[
                                                                  'Cms fetch']
                                                              ?[index]
                                                          ?['author_image'] ??
                                                      '',
                                                  authorName: datasets[
                                                                  'Cms fetch']
                                                              ?[index]
                                                          ?['author_name'] ??
                                                      '',
                                                  articleDate: datasets[
                                                                  'Cms fetch']
                                                              ?[index]
                                                          ?['article_date'] ??
                                                      '',
                                                  articleDescription: datasets[
                                                                  'Cms fetch']
                                                              ?[index]?[
                                                          'article_description'] ??
                                                      '',
                                                  videoYTID: datasets[
                                                                  'Cms fetch']
                                                              ?[index]
                                                          ?['video_yt_id'] ??
                                                      '',
                                                  titreBan1: datasets[
                                                                  'Cms fetch']
                                                              ?[index]
                                                          ?['titre_ban_1'] ??
                                                      '',
                                                  titreBan2: datasets[
                                                                  'Cms fetch']
                                                              ?[index]
                                                          ?['titre_ban_2'] ??
                                                      '',
                                                  titreBan3: datasets[
                                                                  'Cms fetch']
                                                              ?[index]
                                                          ?['titre_ban_3'] ??
                                                      '',
                                                  ban1: datasets['Cms fetch']
                                                          ?[index]?['Ban_1'] ??
                                                      '',
                                                  ban2: datasets['Cms fetch']
                                                          ?[index]?['Ban_2'] ??
                                                      '',
                                                  ban3: datasets['Cms fetch']
                                                          ?[index]?['Ban_3'] ??
                                                      '',
                                                ),
                                              ),
                                            );
                                          },
                                          onDoubleTap: () async {},
                                          onLongPress: () async {},
                                          child: PageArticleCard(
                                            articleImage: datasets['Cms fetch']
                                                        ?[index]
                                                    ?['article_image'] ??
                                                '',
                                            category: datasets['Cms fetch']
                                                    ?[index]?['category'] ??
                                                '',
                                            title: datasets['Cms fetch']?[index]
                                                    ?['title'] ??
                                                '',
                                            authorImage: datasets['Cms fetch']
                                                    ?[index]?['author_image'] ??
                                                '',
                                            authorName: datasets['Cms fetch']
                                                    ?[index]?['author_name'] ??
                                                '',
                                            articleDate: datasets['Cms fetch']
                                                    ?[index]?['article_date'] ??
                                                '',
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            );
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                width: double.maxFinite,
                height: 6.5.h,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF).withOpacity(1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  border: Border(
                    left: BorderSide(
                        width: 2, color: Color(0xFF000000).withOpacity(1)),
                    top: BorderSide(
                        width: 2, color: Color(0xFF000000).withOpacity(1)),
                    right: BorderSide(
                        width: 2, color: Color(0xFF000000).withOpacity(1)),
                    bottom: BorderSide(
                        width: 2, color: Color(0xFF000000).withOpacity(1)),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 7.5,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        child: GestureDetector(
                          onTap: () async {},
                          onDoubleTap: () async {},
                          onLongPress: () async {},
                          child: (('''${filterChange}''') == '''0''')
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      MdiIcons.fromString('home'),
                                      size: 24,
                                      color: Color(0xFF000000).withOpacity(1),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 2,
                                      ),
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 3,
                                        ),
                                        padding: EdgeInsets.zero,
                                        width: 20,
                                        height: 3,
                                        decoration: BoxDecoration(
                                          color:
                                              Color(0xFF000000).withOpacity(1),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                          ),
                                          border: Border(
                                            left: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            top: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            right: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            bottom: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Icon(
                                  FeatherIconsMap['home'],
                                  size: 24,
                                  color: Color(0xFF000000).withOpacity(1),
                                ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 19,
                          top: 3,
                          right: 19,
                        ),
                        child: GestureDetector(
                          onTap: () async {},
                          onDoubleTap: () async {},
                          onLongPress: () async {},
                          child: (('''${filterChange}''') == '''1''')
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      FeatherIconsMap['home'],
                                      size: 24,
                                      color: Color(0xFF000000).withOpacity(1),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 2,
                                      ),
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 3,
                                        ),
                                        padding: EdgeInsets.zero,
                                        width: 20,
                                        height: 3,
                                        decoration: BoxDecoration(
                                          color:
                                              Color(0xFF000000).withOpacity(1),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                          ),
                                          border: Border(
                                            left: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            top: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            right: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            bottom: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Icon(
                                  MdiIcons.fromString(
                                      'newspaper-variant-multiple'),
                                  size: 24,
                                  color: Color(0xFF000000).withOpacity(1),
                                ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 19,
                          right: 19,
                        ),
                        child: GestureDetector(
                          onTap: () async {},
                          onDoubleTap: () async {},
                          onLongPress: () async {},
                          child: (('''${filterChange}''') == '''2''')
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      MdiIcons.fromString('home'),
                                      size: 24,
                                      color: Color(0xFF000000).withOpacity(1),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 2,
                                      ),
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 3,
                                        ),
                                        padding: EdgeInsets.zero,
                                        width: 20,
                                        height: 3,
                                        decoration: BoxDecoration(
                                          color:
                                              Color(0xFF000000).withOpacity(1),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                          ),
                                          border: Border(
                                            left: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            top: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            right: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            bottom: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Icon(
                                  FeatherIconsMap['calendar'],
                                  size: 24,
                                  color: Color(0xFF000000).withOpacity(1),
                                ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 19,
                          right: 19,
                        ),
                        child: GestureDetector(
                          onTap: () async {},
                          onDoubleTap: () async {},
                          onLongPress: () async {},
                          child: (('''${filterChange}''') == '''3''')
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      MdiIcons.fromString('home'),
                                      size: 24,
                                      color: Color(0xFF000000).withOpacity(1),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 2,
                                      ),
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 3,
                                        ),
                                        padding: EdgeInsets.zero,
                                        width: 20,
                                        height: 3,
                                        decoration: BoxDecoration(
                                          color:
                                              Color(0xFF000000).withOpacity(1),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                          ),
                                          border: Border(
                                            left: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            top: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            right: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            bottom: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Icon(
                                  FeatherIconsMap['home'],
                                  size: 24,
                                  color: Color(0xFF000000).withOpacity(1),
                                ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 19,
                          right: 19,
                        ),
                        child: GestureDetector(
                          onTap: () async {},
                          onDoubleTap: () async {},
                          onLongPress: () async {},
                          child: (('''${filterChange}''') == '''4''')
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      MdiIcons.fromString('home'),
                                      size: 24,
                                      color: Color(0xFF000000).withOpacity(1),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 2,
                                      ),
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 3,
                                        ),
                                        padding: EdgeInsets.zero,
                                        width: 20,
                                        height: 3,
                                        decoration: BoxDecoration(
                                          color:
                                              Color(0xFF000000).withOpacity(1),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                          ),
                                          border: Border(
                                            left: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            top: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            right: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                            bottom: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none,
                                                color: Color(0xFF006DFF)
                                                    .withOpacity(1)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Icon(
                                  FeatherIconsMap['play'],
                                  size: 24,
                                  color: Color(0xFF000000).withOpacity(1),
                                ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 19,
                          right: 15,
                        ),
                        child: GestureDetector(
                          onTap: () async {},
                          onDoubleTap: () async {},
                          onLongPress: () async {},
                          child: Icon(
                            FeatherIconsMap['settings'],
                            size: 24,
                            color: Color(0xFF000000).withOpacity(1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
