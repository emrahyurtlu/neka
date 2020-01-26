import 'dart:io';
import 'dart:ui';

import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:image_picker/image_picker.dart';

import 'console_log_util.dart';

Future<String> mlReadBarcode() async {
  String result = "";
  final BarcodeDetector barcodeDetector =
      FirebaseVision.instance.barcodeDetector();
  File image =
      await ImagePicker.pickImage(source: ImageSource.camera, imageQuality: 81);
  FirebaseVisionImage fbImage = FirebaseVisionImage.fromFile(image);
  final List<Barcode> barcodes = await barcodeDetector.detectInImage(fbImage);

  if (barcodes != null) {
    for (var barcode in barcodes) {
      consoleLog(barcode.displayValue);
      result = barcode.displayValue;
    }
  }

  barcodeDetector.close();

  return result;
}

Future<String> mlReadText() async {
  final TextRecognizer textRecognizer =
      FirebaseVision.instance.textRecognizer();

  File image =
      await ImagePicker.pickImage(source: ImageSource.camera, imageQuality: 81);
  FirebaseVisionImage fbImage = FirebaseVisionImage.fromFile(image);
  VisionText text = await textRecognizer.processImage(fbImage);
  consoleLog(text.text);

  for (TextBlock block in text.blocks) {
    final Rect boundingBox = block.boundingBox;
    final List<Offset> cornerPoints = block.cornerPoints;
    final String text = block.text;
    final List<RecognizedLanguage> languages = block.recognizedLanguages;

    for (TextLine line in block.lines) {
      print("Line.Text: " + line.text);
      // Same getters as TextBlock
      for (TextElement element in line.elements) {
        // Same getters as TextBlock
        print("Element.Text: " + element.text);
      }
    }
  }

  textRecognizer.close();

  return text.text;
}
