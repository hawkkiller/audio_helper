import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'audio_helper_method_channel.dart';

abstract class AudioHelperPlatform extends PlatformInterface {
  /// Constructs a AudioHelperPlatform.
  AudioHelperPlatform() : super(token: _token);

  static final Object _token = Object();

  static AudioHelperPlatform _instance = MethodChannelAudioHelper();

  /// The default instance of [AudioHelperPlatform] to use.
  ///
  /// Defaults to [MethodChannelAudioHelper].
  static AudioHelperPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AudioHelperPlatform] when
  /// they register themselves.
  static set instance(AudioHelperPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
