import 'dart:io';

import 'package:dawgonvegans/helpers/toast.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../helpers/navigation_service.dart';

class EditProfileProvider extends ChangeNotifier {
  File? _selectedImage;
  File? get selectedImage => _selectedImage;

  final ImagePicker picker = ImagePicker();
  Future<void> openCamera() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      _selectedImage = File(image.path);
      notifyListeners();
      NavigationService.goBack;
    } else {
      ToastUtil.showShortToast(
        title: "Failed",
        message: 'You have no Captured any Image',
      );
    }
  }

  Future<void> opengallery() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      _selectedImage = File(image.path);
      notifyListeners();
      NavigationService.goBack;
    } else {
      ToastUtil.showShortToast(
        title: "Failed",
        message: 'You have no selected any Image from your Gallery',
      );
    }
  }

  bool _passwordVisible = false;
  bool get passwordVisible => _passwordVisible;
  void togglePasswordVisibility() {
    _passwordVisible = !_passwordVisible;
    notifyListeners();
  }
}
