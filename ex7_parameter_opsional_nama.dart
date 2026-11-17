import 'dart:io';

// Tambahkan tanda tanya (?) agar n dan newLine bisa menerima nilai null
void printString(String s, {int? n, bool? newLine}) {
  // Gunakan ??= sebagai jalan pintas untuk: if (n == null) n = 1;
  n ??= 1;

  for (int i = 0; i < n; i++) {
    if (newLine == null) {
      stdout.write('${i + 1}. $s\t');
    } else {
      stdout.writeln('${i + 1}. $s');
    }
  }
}

void main(List<String> args) {
  print('Satu argumen');
  printString('Dart');

  print('\nDua argumen dengan newLine bernilai null:');
  printString('Dart', n: 3);

  print('\nDua argumen dengan n bernilai null:');
  printString('Dart', newLine: true);

  print('\nTiga argumen');
  printString('Dart', n: 3, newLine: true);
}
