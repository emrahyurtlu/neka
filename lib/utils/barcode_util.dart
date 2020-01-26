import 'dart:io';

import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:image_picker/image_picker.dart';

import 'console_log_util.dart';

Future<String> firebaseMlReadBarcode() async {
  String result = "";
  final BarcodeDetector barcodeDetector =
      FirebaseVision.instance.barcodeDetector();
  File image =
      await ImagePicker.pickImage(source: ImageSource.camera, imageQuality: 81);
  FirebaseVisionImage bfvi = FirebaseVisionImage.fromFile(image);
  final List<Barcode> barcodes = await barcodeDetector.detectInImage(bfvi);

  if (barcodes != null) {
    for (var barcode in barcodes) {
      consoleLog(barcode.displayValue);
      result = barcode.displayValue;
    }
  }

  barcodeDetector.close();

  return result;
}
