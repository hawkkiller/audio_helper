//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <audio_helper/audio_helper_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) audio_helper_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "AudioHelperPlugin");
  audio_helper_plugin_register_with_registrar(audio_helper_registrar);
}
