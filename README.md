# Maestro

Automação app mobile

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

## Executar o maestro

```bash
maestro test test.yaml
```

## Executar maestro com gravação

```bash
maestro record --local test.yaml
```

## Executar maestro com logs

```bash
maestro test test.yaml --debug-output logs/
```

## Executar maestro com .env

```bash
maestro test test.yaml --env .env
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
