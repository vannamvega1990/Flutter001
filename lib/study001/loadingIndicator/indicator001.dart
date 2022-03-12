import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: WebViewClass(), //    <------ webView
    );
  }
}

class WebViewClass extends StatefulWidget {
  WebViewState createState() => WebViewState();
}

class WebViewState extends State<WebViewClass> {
  bool isLoading = false;

  final key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
          child: IgnorePointer(
        ignoring: isLoading,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: Column(
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          isLoading = false;
                        });
                      },
                      child: Text('show001')),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          isLoading = true;
                        });
                      },
                      child: Text('show002'))
                ],
              ),
            ),
            // WebView(
            //   initialUrl: 'https://google.com',
            //   javascriptMode: JavascriptMode.unrestricted,
            //   key: key,
            //   onPageFinished: (value) {
            //     setState(() {
            //       isLoading = false;
            //     });
            //   },
            //   onPageStarted: (value) {
            //     setState(() {
            //       isLoading = true;
            //     });
            //   },
            // ),
            isLoading
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.grey.withOpacity(0.5),
                    child: const Center(child: CircularProgressIndicator()),
                  )
                : Container(),
          ],
        ),
      )),
    );
  }
}
