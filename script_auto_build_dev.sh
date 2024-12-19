# This script automates the process of building and distributing a Flutter application for both iOS and Android platforms.
# 
# Steps performed by the script:
# 1. Install dependencies by executing `build.sh`.
# 2. Rename the Flutter application to "e-form TNG".
# 3. Increment the app's version and build number in the `pubspec.yaml` file.
# 4. Build an iOS release version of the app using `lib/main_dev.dart` as the entry point.
# 5. Upload the iOS build to TestFlight using Fastlane.
# 6. Build an Android APK release version of the app using `lib/main_dev.dart` as the entry point.
# 7. Distribute the Android APK using Firebase App Distribution.
# This script installs dependencies, builds flutter launcher icons with a specific Flutter yaml file, increments the app's build number in its YAML file, and then executes commands to devuce iOS and Android builds, including Firebase distribution of apk.
echo -------Install dependencies-------
sh build.sh 
# flutter pub run flutter_launcher_icons:main -f laucher_icon_1.yaml
flutter pub global run rename --appname "e-form TNG" 

# This command helps increase the app version on every executed build for both versions and builds, e.g., it increases from 1.0.0+1 to 1.0.0+2.
echo -------Increase the app version on every executed build -------
perl -i -pe 's/^(version:\s+\d+\.\d+\.)(\d+)(\+)(\d+)$/$1.($2+1).$3.($4+1)/e' pubspec.yaml

# Run commands to build an iOS release-build using 'lib/main_dev.dart'.
echo -------Build ios-------
flutter build ios --flavor=prod --target=lib/main_dev.dart --release --no-codesign

# Uploading ipa using Fastlane on TestFlight.
echo -------Up Testflight-------
cd ios
fastlane beta
cd ../

# Build-release an apk for Android using `'lib/main_dev.dart`.
echo -------Build apk-------
flutter build apk --flavor=prod --target=lib/main_dev.dart

# Distribute the Android APK using Firebase App Distribution.
echo -------Firebase Android App Distribution-------
cd build/app/outputs/flutter-apk  
firebase appdistribution:distribute app-release.apk --app 1:11752009217:android:3e9e69bb1b66a86c909a00 --release-notes "Bug fixes and improvements" --testers-file /......./testers.txt
cd ../../../../
