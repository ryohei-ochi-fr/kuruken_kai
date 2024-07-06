import 'dart:convert';

import 'package:flutter/foundation.dart';
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
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _initializeWebView();
  }

  Future<void> _initializeWebView() async {
    _controller = WebViewController();
    await _configureWebView(_controller);
  }

  Future<void> _configureWebView(WebViewController webViewController) async {
    await webViewController.setJavaScriptMode(JavaScriptMode.unrestricted);
    await webViewController.loadRequest(Uri.parse('https://flutter.dev'));

    await webViewController.addJavaScriptChannel(
      'sendMessage',
      onMessageReceived: _onJavaScriptMessageReceived,
    );
  }

  Future<void> _onJavaScriptMessageReceived(JavaScriptMessage result) async {
    if (kDebugMode) {
      print('js message: ${result.message}');
    }

    final jsonData = jsonDecode(result.message) as Map<String, dynamic>;

    if (kDebugMode) {
      print('requested: ${jsonData['type']}');
    }

    await _controller.runJavaScriptReturningResult(
        "flutterMessage('${jsonData['message']}')");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
      ),
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
