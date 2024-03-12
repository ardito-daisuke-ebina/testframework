#!/bin/sh

# -------------- config --------------
xcodebuild \
'BUILD_LIBRARY_FOR_DISTRIBUTION=YES' \
build \
-project "EbinaFramework.xcodeproj" \
-scheme "EbinaFramework" \
-destination 'generic/platform=iOS Simulator' \
-configuration Release \
-derivedDataPath build \

#　デバイスのビルド
xcodebuild \
'BUILD_LIBRARY_FOR_DISTRIBUTION=YES' \
build \
-project "EbinaFramework.xcodeproj" \
-scheme "EbinaFramework" \
-destination 'generic/platform=iOS' \
-configuration Release \
-derivedDataPath build \
    
# XCFrameworkを作成
xcodebuild \
-create-xcframework \
-framework "build/Build/Products/Release-iphoneos/EbinaFramework.framework" \
-framework "build/Build/Products/Release-iphonesimulator/EbinaFramework.framework" \
-output "./EbinaFramework.xcframework"