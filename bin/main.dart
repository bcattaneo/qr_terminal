import 'package:qr_terminal/qr_terminal.dart' as $qr_terminal;

void main(List<String> arguments) {
  // Generate a regular QR
  $qr_terminal.generate("Hello World!");
  print("");

  // Generate a small QR
  $qr_terminal.generate("Hello World!", small: true);
  print("");

  // Generate a QR specifying a QRCode type
  $qr_terminal.generate("Smol", typeNumber: 4);
  print("");

  // Generate a QR specifying a QRCode type and make it small
  $qr_terminal.generate("Smoller", typeNumber: 4, small: true);
  print("");
}
