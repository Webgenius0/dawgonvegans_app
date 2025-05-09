String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your email';
  }
  final emailRegex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
  if (!emailRegex.hasMatch(value)) {
    return 'Please enter a valid email address';
  }
  return null;
}

String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Enter Password';
  }
  if (value.length < 8) {
    return 'Password must be at least 8 characters';
  }
  return null;
}

// Confirm Password Validator
String? confirmPasswordValidator(String? value, String? originalPassword) {
  if (value == null || value.isEmpty) {
    return 'Please confirm your password';
  }
  if (value != originalPassword) {
    return 'Passwords do not match';
  }
  return null;
}

String? validatePhoneNumber(String? value) {
  // Regular expression for validating international phone numbers
  // String pattern = r'^\+?([0-9]{1,3})?[-.●\s]?([0-9]{1,4})[-.●\s]?([0-9]{1,4})[-.●\s]?([0-9]{1,9})$';
  // RegExp regExp = RegExp(pattern);

  if (value == null || value.isEmpty) {
    return 'Please enter a phone number';
  }
  /* else if (!regExp.hasMatch(value)) {
     return 'Please enter a valid phone number';
   } */
  return null;
}

//validation Name
String? nameValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your name';
  }

  return null;
}

//validation Name
String? messageValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Enter your Message';
  }
  return null;
}

String? validateDate(String? value) {
  if (value == null || value.isEmpty) {
    return 'Date of birth is required';
  }

  RegExp dateRegex = RegExp(r'^\d{2}/\d{2}/\d{4}$');
  if (!dateRegex.hasMatch(value)) {
    return 'Invalid date format (MM/DD/YYYY)';
  }

  try {
    List<String> parts = value.split('/');
    int month = int.parse(parts[0]);
    int day = int.parse(parts[1]);
    int year = int.parse(parts[2]);

    if (month < 1 || month > 12) return 'Invalid month (01-12)';
    if (day < 1 || day > 31) return 'Invalid day (01-31)';
    if (year < 1900 || year > DateTime.now().year) return 'Invalid year';

    DateTime enteredDate = DateTime(year, month, day);
    if (enteredDate.isAfter(DateTime.now())) {
      return 'Date cannot be in the future';
    }

    return null;
  } catch (e) {
    return 'Invalid date';
  }
}
