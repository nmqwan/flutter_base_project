# echo ------- CLEAN BASE PROJECT-------
#  flutter clean ./packages/base_project  
# echo -------CLEAN MAIN PROJECT-------
#  flutter clean   
# echo ------- BUILD BASE PROJECT-------
#  flutter pub get ./packages/base_project/ 
#  cd packages/base_project && dart fix --apply && cd ../..
# echo -------BUILD MAIN PROJECT-------
#  flutter pub get  
#  dart fix --apply
flutter clean
flutter pub get  
dart fix --apply