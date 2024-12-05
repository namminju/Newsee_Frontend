import 'package:flutter/material.dart';

void showErrorDialog(BuildContext context, String message,
    {String? title, String confirmButtonText = '확인'}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        title ?? '오류',
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      content: Text(
        message,
        style: const TextStyle(fontSize: 16, color: Colors.black54),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            confirmButtonText,
            style: const TextStyle(color: Colors.blue),
          ),
        ),
      ],
    ),
  );
}