# Maestro

Automação app mobile

## Instalação do apk

Faça a instalação do apk no emulador antes de executar os testes

## Extensões VsCode

- Maestro Workbench
- markdownlint

## Comandos úteis

Pull apk da pasta do celular para o computador

```bash
adb pull /storage/emulated/0/Download/testes/app.apk
```

Push apk da pasta do computador para o celular

```bash
adb install app.apk
```

Para listar todos os devices conectados

```bash
adb devices
adb devices -l
```

## Executar o teste no maestro

```bash
maestro test test.yaml
```

## Executar teste específico no maestro

```bash
maestro test tests/specs/test_checkout_pix.yaml
```

## Executar teste no maestro com gravação

```bash
maestro record --local test.yaml
```

## Executar maestro com logs

```bash
maestro test test.yaml --debug-output logs/
```

## Definir timeout de limite das ações de espera

Linux

```bash
export MAESTRO_DRIVER_STARTUP_TIMEOUT=30000 maestro test file.yaml
```

Windows

```bash
set MAESTRO_DRIVER_STARTUP_TIMEOUT=30000 && maestro test file.yaml
```

## Maestro studio

```bash
maestro studio
```

## Extrator de apks

[apk-extractor](https://github.com/Domilopment/apk-extractor)

## Dados do Android

- Virtualbox
- Emulador Genymotion
- Xiaomi Redmi Note 7
- Android 11.0
- Genymotion-ARM-Translation_for_11

## Documentação Maestro

[docs](https://docs.maestro.dev/advanced/configuring-permissions)

## Padrão de arquivos yaml

snake_case
