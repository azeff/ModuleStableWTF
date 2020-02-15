#!/bin/bash

rm -rf ../ModuleStableClient/ModuleStable.xcframework
rm -rf /tmp/xcf

# Builds xcframework from iOS framework template project called TestFramework

# Archive for iOS
xcodebuild archive -scheme ModuleStable -destination="iOS" -archivePath /tmp/xcf/ios.xcarchive -derivedDataPath /tmp/iphoneos -sdk iphoneos SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# Archive for simulator
xcodebuild archive -scheme ModuleStable -destination="iOS Simulator" -archivePath /tmp/xcf/iossimulator.xcarchive -derivedDataPath /tmp/iphoneos -sdk iphonesimulator SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# Build xcframework with two archives
xcodebuild -create-xcframework -framework /tmp/xcf/ios.xcarchive/Products/Library/Frameworks/ModuleStable.framework -framework /tmp/xcf/iossimulator.xcarchive/Products/Library/Frameworks/ModuleStable.framework -output /tmp/xcf/ModuleStable.xcframework


cp -R /tmp/xcf/ModuleStable.xcframework ../ModuleStableClient/
echo "Build and copied ModuleStable.xcframework"
