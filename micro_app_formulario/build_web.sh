#!/bin/bash

#Removendo pubspeck.lock
rm -fr pubspec.lock

#Flutter clean
flutter clean

#Flutter pub get
flutter pub get

# Realiza o build web do projeto Flutter
flutter build web --release

# Define o diretório de destino para os arquivos build
diretorio_destino="/Users/luiz.a.dos.santos/Documents/web/formulario"

# Move os arquivos build para o diretório de destino
mv ./build/web/* "$diretorio_destino"

# Exibe uma mensagem indicando que o processo foi concluído
echo "Build web concluído e arquivos movidos para $diretorio_destino"
