import 'dart:io';
import 'package:qr/qr.dart';

const _white = "\u{2588}\u{2588}";
const _black = "  ";
const _correctionLevel = QrErrorCorrectLevel.L;

void generate(String input, {int typeNumber = 10}) {
  final qrc = QrCode(typeNumber, _correctionLevel);
  qrc.addData(input);
  final qri = QrImage(qrc);
  final moduleCount = qri.moduleCount;
  final edge = [-1, moduleCount];

  String output = "";
  for (var row = -1; row <= moduleCount; row++) {
    for (var col = -1; col <= moduleCount; col++) {
      if (edge.contains(row) || edge.contains(col) || !qri.isDark(row, col)) {
        output += _white;
      } else {
        output += _black;
      }
    }
    output += "\n";
  }
  stdout.write(output);
}
