[✓] Flutter (Channel unknown, 2.0.6, on macOS 12.0 21A5248p darwin-x64, locale zh-Hans-CN)
• Flutter version 2.0.6 at /Users/jd/Documents/sdk/flutter/flutter
• Framework revision 1d9032c (4 个月前), 2021-04-29 17:37:58 -0700
• Engine revision 05e680e202
• Dart version 2.12.3
• Pub download mirror https://pub.flutter-io.cn
• Flutter download mirror https://storage.flutter-io.cn

[✓] Android toolchain - develop for Android devices (Android SDK version 29.0.2)
• Android SDK at /Users/jd/Documents/sdk/android-sdk-macosx
• Platform android-30, build-tools 29.0.2
• ANDROID_HOME = /Users/jd/Documents/sdk/android-sdk-macosx
• Java binary at: /Applications/Android Studio.app/Contents/jre/jdk/Contents/Home/bin/java
• Java version OpenJDK Runtime Environment (build 1.8.0_242-release-1644-b3-6222593)
• All Android licenses accepted.

[✓] Xcode - develop for iOS and macOS
• Xcode at /Applications/Xcode.app/Contents/Developer
• Xcode 12.4, Build version 12D4e
• CocoaPods version 1.10.0



Widget _buildMapWidget() {
    return GestureDetector(
      onPanUpdate: (detail) {
        print('detail:$detail');
      },
      child: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment(0, -0.3),
        child: Text(
          'Map',
          style: TextStyle(color: Colors.blue),
        ),
        color: Colors.white,
      ),
    );
  }
  
  
onPanUpdate can't print log
