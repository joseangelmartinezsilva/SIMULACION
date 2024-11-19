import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cobros'),
        backgroundColor: const Color(0xFF48040D), // Color de fondo rojo oscuro
        titleTextStyle: const TextStyle(
          color:
              Color.fromARGB(255, 224, 224, 224), // Color del texto gris claro
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Pago de Tarifas',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 224, 224, 224), // Color gris claro
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Número de Tarjeta',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 224, 224, 224), // Color gris claro
                ),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF48040D), // Borde color rojo oscuro
                  ),
                ),
              ),
              style: const TextStyle(
                color: Color.fromARGB(255, 224, 224, 224), // Color gris claro
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Fecha de Expiración',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 224, 224, 224), // Color gris claro
                ),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF48040D), // Borde color rojo oscuro
                  ),
                ),
              ),
              style: const TextStyle(
                color: Color.fromARGB(255, 224, 224, 224), // Color gris claro
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'CVV',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 224, 224, 224), // Color gris claro
                ),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF48040D), // Borde color rojo oscuro
                  ),
                ),
              ),
              obscureText: true,
              style: const TextStyle(
                color: Color.fromARGB(255, 224, 224, 224), // Color gris claro
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para procesar el pago
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF48040D), // Botón rojo oscuro
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text(
                'Pagar',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 224, 224, 224), // Color gris claro
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
