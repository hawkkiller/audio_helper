
import 'audio_helper_platform_interface.dart';

class AudioHelper {
  Future<String?> getPlatformVersion() {
    return AudioHelperPlatform.instance.getPlatformVersion();
  }
}
