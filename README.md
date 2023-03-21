# qr_terminal

Print QRCodes in your terminal.

Project was inspired by [qrcode-terminal](https://github.com/gtanner/qrcode-terminal) for javascript/node.

## Pub package
Install with Dart
```
dart pub add qr_terminal
```
Or with Flutter
```
flutter pub add qr_terminal
```
Then import this module
```dart
import 'package:qr_terminal/qr_terminal.dart' as $qr_terminal;
```

## Usage
### Generate a regular QR
```dart
$qr_terminal.generate("Hello World!");
```

### Generate a small QR
```dart
$qr_terminal.generate("Hello World!", small: true);
```

### Generate a QR specifying a QRCode type
```dart
$qr_terminal.generate("Smol", typeNumber: 4);
```

### Generate a QR specifying a QRCode type and make it small
```dart
$qr_terminal.generate("Smoller", typeNumber: 4, small: true);
```

## License
GNU GPL v3
