import 'package:flutter/material.dart';

class PagosPendientes extends StatefulWidget {
  const PagosPendientes({super.key});

  @override
  _PagosPendientesState createState() => _PagosPendientesState();
}

class _PagosPendientesState extends State<PagosPendientes> {
  final List<Map<String, String>> _pendingPayments = []; // Lista vacía para simular que no hay pagos pendientes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagos Pendientes'),
        backgroundColor: const Color(0xFF48040D),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 224, 224, 224),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _pendingPayments.isEmpty
            ? Center(
                child: Text(
                  'No hay pagos pendientes',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : ListView.builder(
                itemCount: _pendingPayments.length,
                itemBuilder: (context, index) {
                  final payment = _pendingPayments[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16.0),
                      title: Text(
                        payment['type']!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Monto: ${payment['amount']}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: ElevatedButton(
                        onPressed: () {
                          _showPaymentDetails(payment['type']!, payment['amount']!);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF48040D),
                        ),
                        child: const Text('Pagar'),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }

  void _showPaymentDetails(String type, String amount) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Detalles de Pago'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Tipo de Pago: $type'),
              Text('Monto: $amount'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Aquí puedes implementar la lógica para procesar el pago
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Pago procesado')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF48040D),
                ),
                child: const Text('Confirmar Pago'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
          ],
        );
      },
    );
  }
}
