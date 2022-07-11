import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'audio_helper_platform_interface.dart';

/// An implementation of [AudioHelperPlatform] that uses method channels.
class MethodChannelAudioHelper extends AudioHelperPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('audio_helper');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
