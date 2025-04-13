#!/bin/bash

# Configurações iniciais
ANDROID_DIR="$HOME/Android"
CMDLINE_TOOLS_DIR="$ANDROID_DIR/cmdline-tools"
SDK_URL="https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip"
SDK_ZIP="cmdline-tools.zip"

echo ">> Criando diretórios..."
mkdir -p "$CMDLINE_TOOLS_DIR"

echo ">> Baixando Android SDK Command Line Tools..."
curl -o "$SDK_ZIP" "$SDK_URL"
unzip "$SDK_ZIP" -d "$CMDLINE_TOOLS_DIR"
mv "$CMDLINE_TOOLS_DIR/cmdline-tools" "$CMDLINE_TOOLS_DIR/latest"
rm "$SDK_ZIP"

echo ">> Configurando variáveis de ambiente..."
echo "export ANDROID_HOME=$ANDROID_DIR" >> ~/.bashrc
echo "export PATH=\$ANDROID_HOME/cmdline-tools/latest/bin:\$ANDROID_HOME/platform-tools:\$PATH" >> ~/.bashrc
source ~/.bashrc

echo ">> Instalando componentes básicos do SDK..."
yes | sdkmanager --sdk_root=$ANDROID_HOME "platform-tools" "platforms;android-30"

echo ">> Instalando o Maestro..."
curl -Ls "https://get.maestro.mobile.dev" | bash

echo ">> Pronto! Agora você pode rodar um teste com o Maestro!"

echo ">> Você pode rodar seus testes com:"
echo "maestro test seu_teste.yaml"

