#include "include/audio_helper/audio_helper_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "audio_helper_plugin.h"

void AudioHelperPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  audio_helper::AudioHelperPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
