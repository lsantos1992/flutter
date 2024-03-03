echo "\n\033[0;32m---------------------Cleaning .dart_tool---------------------\n\n\n"
echo "\033[31m--------------------------Removing .dart_tool-----------------------------------\n"
rm -rf ~/.dart_tool
echo "\n\033[0;32m---------------------Cleaning base_app_module dependencies---------------------\n\n\n"
echo "\033[31m--------------------------Removing pubspec.lock-----------------------------------\n"
rm pubspec.lock
echo "\n\033[31m--------------------------running flutter clean----------------------------------\n"
flutter clean

echo "\n\033[0;32m----------------------Getting base_app_module dependencies---------------------\n"
flutter pub get 