import 'package:flutter/material.dart';

class SuccessView extends StatelessWidget {
  final String data;

  const SuccessView({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos cargados'),
        backgroundColor: Colors.green.shade700,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          color: Colors.green.shade50,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 80,
                  color: Colors.green.shade700,
                ),
                const SizedBox(height: 20),
                Text(
                  '¡Éxito!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade700,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  data,
                  style: const TextStyle(fontSize: 18, color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
