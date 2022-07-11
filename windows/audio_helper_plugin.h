#ifndef FLUTTER_PLUGIN_AUDIO_HELPER_PLUGIN_H_
#define FLUTTER_PLUGIN_AUDIO_HELPER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace audio_helper {

class AudioHelperPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  AudioHelperPlugin();

  virtual ~AudioHelperPlugin();

  // Disallow copy and assign.
  AudioHelperPlugin(const AudioHelperPlugin&) = delete;
  AudioHelperPlugin& operator=(const AudioHelperPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace audio_helper

#endif  // FLUTTER_PLUGIN_AUDIO_HELPER_PLUGIN_H_
