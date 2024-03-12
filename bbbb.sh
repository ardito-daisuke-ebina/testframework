
 xcodebuild archive \
  -scheme EbinaFramework \
  -sdk iphoneos \
  -archivePath "archives/ios_devices.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO
  
xcodebuild archive \
  -scheme EbinaFramework \
  -sdk iphonesimulator \
  -archivePath "archives/ios_simulators.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO

xcodebuild -create-xcframework \
    -framework archives/ios_devices.xcarchive/Products/Library/Frameworks/EbinaFramework.framework \
   -framework archives/ios_simulators.xcarchive/Products/Library/Frameworks/EbinaFramework.framework \
  -output EbinaFramework.xcframework