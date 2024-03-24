/** // ignore_for_file: prefer_const_constructors, sized_box_for_whitespace


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:aligned_dialog/aligned_dialog.dart';


import 'home_page_model.dart';
export 'home_page_model.dart';


class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});


  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}


class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;


  final scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }


  @override
  void dispose() {
    _model.dispose();


    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFE5E5E5),
        drawer: Drawer(
          elevation: 16,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 304,
                    height: 62,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.house,
                            color: Color(0xFF4C4C4C),
                            size: 30,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(25, 0, 40, 0),
                            child: Text(
                              'Home',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Color(0xFF4C4C4C),
                                    fontWeight: FontWeight.w200,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 304,
                height: 62,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                alignment: AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.settings_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 45,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 40, 0),
                        child: Text(
                          'Settings',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter',
                                    color: Color(0xFF4C4C4C),
                                    fontWeight: FontWeight.w200,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 304,
                height: 62,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                alignment: AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(37, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Color(0xFF4C4C4C),
                        size: 40,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(23, 0, 40, 0),
                        child: Text(
                          'About',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter',
                                    color: Color(0xFF4C4C4C),
                                    fontWeight: FontWeight.w200,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0, 1),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 55, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Color(0xFFDDDDDD),
                          borderWidth: 1,
                          fillColor: Color(0xFFDDDDDD),
                          icon: FaIcon(
                            FontAwesomeIcons.angleRight,
                            color: Color(0xFF4C4C4C),
                            size: 40,
                          ),
                          onPressed: () async {
                            scaffoldKey.currentState!.openDrawer();
                          },
                        ),
                      ),
                      Text(
                        'SPORTLENS',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'HK Grotesk',
                              color: Color(0xFFACACAC),
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              useGoogleFonts: false,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: FaIcon(
                          FontAwesomeIcons.house,
                          color: Color(0xFF4C4C4C),
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/Untitled167_20240319021502.PNG',
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Divider(
                    thickness: 3,
                    color: Color(0xFF4C4C4C),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Builder(
                        builder: (context) => FlutterFlowIconButton(
                          borderColor: Color(0xFFD5D5D5),
                          borderRadius: 20,
                          borderWidth: 1,
                          fillColor: Color(0xFFD5D5D5),
                          icon: FaIcon(
                            FontAwesomeIcons.ellipsis,
                            color: Color(0xFF4C4C4C),
                            size: 30,
                          ),
                          onPressed: () async {
                            // SelectVideoPopup
                            await showAlignedDialog(
                              context: context,
                              isGlobal: false,
                              avoidOverflow: true,
                              targetAnchor: AlignmentDirectional(0, 1)
                                  .resolve(Directionality.of(context)),
                              followerAnchor: AlignmentDirectional(0, 0)
                                  .resolve(Directionality.of(context)),
                              builder: (dialogContext) {
                                return Material(
                                  color: Colors.transparent,
                                  child: GestureDetector(
                                    onTap: () => _model
                                            .unfocusNode.canRequestFocus
                                        ? FocusScope.of(context)
                                            .requestFocus(_model.unfocusNode)
                                        : FocusScope.of(context).unfocus(),
                                    child: Container(
                                      height: 110,
                                      width: 300,
                                      child: CameraOptionsPopupWidget(),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Text(
                    'YOUR CAMERA',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'HK Grotesk',
                          color: Color(0xFF4C4C4C),
                          fontSize: 30,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 30),
                  child: Text(
                    '< no device connected >',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'HK Grotesk',
                          color: Color(0xFF6C6C6C),
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.italic,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        if (kDebugMode) {
                          print('Button pressed ...');
                        }
                      },
                      text: 'CONNECT',
                      options: FFButtonOptions(
                        width: 130,
                        height: 55,
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: Color(0xFF4C4C4C),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'HK Grotesk',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                  useGoogleFonts: false,
                                ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class CameraOptionsPopupWidget extends StatefulWidget {
  const CameraOptionsPopupWidget({super.key});


  @override
  State<CameraOptionsPopupWidget> createState() =>
      _CameraOptionsPopupWidgetState();
}


class _CameraOptionsPopupWidgetState extends State<CameraOptionsPopupWidget> {
  late CameraOptionsPopupModel _model;


  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }


  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CameraOptionsPopupModel());
  }


  @override
  void dispose() {
    _model.maybeDispose();


    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        width: 300,
        height: 110,
        decoration: BoxDecoration(
          color: Color(0xFFE5E5E5),
          borderRadius: BorderRadius.circular(12),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: FaIcon(
                            FontAwesomeIcons.photoFilm,
                            color: Color(0xFF4C4C4C),
                            size: 20,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              'Import video...',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'HK Grotesk',
                                    color: Color(0xFF4C4C4C),
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class CameraOptionsPopupModel
    extends FlutterFlowModel<CameraOptionsPopupWidget> {
  /// Initialization and disposal methods.


  @override
  void initState(BuildContext context) {}


  @override
  void dispose() {}


  /// Action blocks are added here.


  /// Additional helper methods are added here.
}


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //usePathUrlStrategy();


  //await FlutterFlowTheme.initialize();


  runApp(HomePageWidget());
} */


import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(const VideoApp());

/// Stateful widget to fetch and then display video content.
class VideoApp extends StatefulWidget {
  const VideoApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'http://10.152.44.239:8000/videos/hi2.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
} 

/** import 'dart:typed_data';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Image.network('http://10.152.44.239:8000/video_feed'),
      ),
    );
  }
} */

/** // ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
     MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://10.152.44.239:8000/video_feed'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}

*/

// ignore_for_file: avoid_print
/**
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final imgUrl = "http://10.152.50.93:8000/videos/hi.png";
  bool downloading = false;
  var progressString = "";

  @override
  void initState() {
    super.initState();

    downloadFile();
  }

  Future<void> downloadFile() async {
    Dio dio = Dio();

    try {
      var dir = await getApplicationDocumentsDirectory();

      await dio.download(imgUrl, "${dir.path}/myimage.jpg",


      );
    } catch (e) {
      print(e);
    }

    setState(() {
      downloading = false;
      progressString = "Completed";
    });
    print("Download completed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      body: Center(
        child: downloading
            ? SizedBox(
                height: 120.0,
                width: 200.0,
                child: Card(
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const CircularProgressIndicator(),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Downloading File: $progressString",
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              )
            : const Text("No Data"),
      ),
    );
  }
}
*/
/**
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';


Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('http://sportlens@10.153.21.62:8000/connect'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    

    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}


class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'userId': int userId,
        'id': int id,
        'title': String title,
      } =>
        Album(
          userId: userId,
          id: id,
          title: title,
        ),
      _ => throw const FormatException('Failed to load album2.'),
    };
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
} */
