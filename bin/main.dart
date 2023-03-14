import 'package:qr_terminal/qr_terminal.dart' as $qr_terminal;

void main(List<String> arguments) {
  // Generate a QR
  $qr_terminal.generate("Hello World!");

  print("");

  // Generate a QR specifying a QRCode type
  $qr_terminal.generate("Smaller", typeNumber: 4);
}
