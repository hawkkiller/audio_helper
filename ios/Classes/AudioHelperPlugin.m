#import "AudioHelperPlugin.h"
#if __has_include(<audio_helper/audio_helper-Swift.h>)
#import <audio_helper/audio_helper-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "audio_helper-Swift.h"
#endif

@implementation AudioHelperPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAudioHelperPlugin registerWithRegistrar:registrar];
}
@end
