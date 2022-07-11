import 'package:flutter_test/flutter_test.dart';
import 'package:audio_helper/audio_helper.dart';
import 'package:audio_helper/audio_helper_platform_interface.dart';
import 'package:audio_helper/audio_helper_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAudioHelperPlatform 
    with MockPlatformInterfaceMixin
    implements AudioHelperPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AudioHelperPlatform initialPlatform = AudioHelperPlatform.instance;

  test('$MethodChannelAudioHelper is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAudioHelper>());
  });

  test('getPlatformVersion', () async {
    AudioHelper audioHelperPlugin = AudioHelper();
    MockAudioHelperPlatform fakePlatform = MockAudioHelperPlatform();
    AudioHelperPlatform.instance = fakePlatform;
  
    expect(await audioHelperPlugin.getPlatformVersion(), '42');
  });
}
