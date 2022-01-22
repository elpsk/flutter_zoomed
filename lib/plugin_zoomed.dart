
import 'dart:async';

import 'package:flutter/services.dart';

class PluginZoomed {
  static const MethodChannel _channel = MethodChannel('plugin_zoomed');

  static Future<bool> get isScreenZoomed async {
    final bool version = await _channel.invokeMethod('isScreenZoomed');
    return version;
  }
}
