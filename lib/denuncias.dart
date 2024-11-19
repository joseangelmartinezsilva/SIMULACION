import 'package:flutter/material.dart';

class QuejasDenunciasPage extends StatelessWidget {
  const QuejasDenunciasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quejas y/o Denuncias'),
        backgroundColor: const Color(0xFF48040D),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 224, 224, 224),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Formulario de Quejas y/o Denuncias',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF48040D),
              ),
            ),
            const SizedBox(height: 16),
            _buildTextField(
              label: 'Nombre Completo',
              hintText: 'Ingrese su nombre completo',
            ),
            const SizedBox(height: 16),
            _buildTextField(
              label: 'Correo Electrónico',
              hintText: 'Ingrese su correo electrónico',
            ),
            const SizedBox(height: 16),
            _buildTextField(
              label: 'Teléfono',
              hintText: 'Ingrese su número de teléfono',
            ),
            const SizedBox(height: 16),
            _buildTextField(
              label: 'Número de Folio (si aplica)',
              hintText: 'Ingrese el número de folio relacionado',
            ),
            const SizedBox(height: 16),
            _buildTextField(
              label: 'Descripción del Problema',
              hintText: 'Describa detalladamente su queja o denuncia',
              maxLines: 5,
            ),
            const SizedBox(height: 16),
            _buildDropdown(
              label: 'Tipo de Queja/Denuncia',
              items: [
                'Predial vigente y vencido',
                'Agua vigente',
                'Tenencia',
                'Licencia de conducir y Permiso',
                'Derechos de trámites vehiculares',
                'Derechos del Registro Civil',
                'Impuesto sobre Nóminas',
                'Infracciones de tránsito con folio',
                'Multa por verificación extemporánea',
                'Copias certificadas de nacimiento',
                'Copias certificadas de matrimonio',
                'Copias certificadas de  defunción',
                'Constancia de no existencia de registro',
                'Certificaciones de pago',
                'Constancias de adeudo del Impuesto Predial',
                'Otros',
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes implementar la lógica para enviar el formulario
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Queja/Denuncia enviada')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF48040D), // Usa backgroundColor en lugar de primary
              ),
              child: const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required String hintText,
    int maxLines = 1,
  }) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      maxLines: maxLines,
    );
  }

  Widget _buildDropdown({
    required String label,
    required List<String> items,
  }) {
    String? selectedItem;
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      value: selectedItem,
      onChanged: (String? newValue) {
        selectedItem = newValue;
      },
      items: items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
    );
  }
}