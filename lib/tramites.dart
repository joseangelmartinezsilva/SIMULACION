import 'package:flutter/material.dart';
import 'package:login/pagos.dart';
import 'package:login/transparecia.dart';
import 'package:login/denuncias.dart';
import 'package:login/UserHome.dart';

class ServiciosTramites extends StatelessWidget {
  const ServiciosTramites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Servicios y Trámites'),
        backgroundColor: const Color(0xFF48040D),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 224, 224, 224), // Gris #E0E0E0
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF48040D),
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context); // Cierra el drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserHome()),
                ); // Navega a la pantalla de ServiciosTramites
              },
            ),
            ListTile(
              leading: const Icon(Icons.visibility),
              title: const Text('Transparencia'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LeyTransparencia()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.online_prediction),
              title: const Text('Pagos en Línea'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Pagos pendientes'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PagosPendientes()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.report),
              title: const Text('Quejas y/o Denuncias'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const QuejasDenunciasPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Imagen de fondo (marca de agua)
          Positioned.fill(
            child: Opacity(
              opacity: 0.1, // Controla la opacidad de la marca de agua
              child: Image.asset(
                'assets/images/FONDO.png',
                fit: BoxFit.cover, // Asegura que la imagen cubra toda la pantalla
              ),
            ),
          ),
          // Contenido principal
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                _buildHeaderTile(
                  context,
                  icon: Icons.payment,
                  title: 'Pago de Servicios',
                  children: [
                    _buildServiceTile(
                      context,
                      icon: Icons.home,
                      label: 'Predial (Vigente y Vencido)',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                    _buildServiceTile(
                      context,
                      icon: Icons.water_drop,
                      label: 'Agua (Vigente)',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                    _buildServiceTile(
                      context,
                      icon: Icons.directions_car,
                      label: 'Tenencia',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                    _buildServiceTile(
                      context,
                      icon: Icons.card_membership,
                      label: 'Licencia de Conducir y Permiso',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                    _buildServiceTile(
                      context,
                      icon: Icons.directions_bus,
                      label: 'Derechos de Trámites Vehiculares',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                    _buildServiceTile(
                      context,
                      icon: Icons.account_balance_wallet,
                      label: 'Derechos del Registro Civil',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                    _buildServiceTile(
                      context,
                      icon: Icons.work,
                      label: 'Impuesto sobre Nóminas',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                    _buildServiceTile(
                      context,
                      icon: Icons.gavel,
                      label: 'Infracciones de Tránsito con Folio',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                    _buildServiceTile(
                      context,
                      icon: Icons.warning,
                      label: 'Multa por Verificación Extemporánea',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildHeaderTile(
                  context,
                  icon: Icons.assignment,
                  title: 'Trámites',
                  children: [
                    _buildServiceTile(
                      context,
                      icon: Icons.assignment,
                      label: 'Copias Certificadas de Nacimiento',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                    _buildServiceTile(
                      context,
                      icon: Icons.favorite,
                      label: 'Copias Certificadas de Matrimonio',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                    _buildServiceTile(
                      context,
                      icon: Icons.timer_off,
                      label: 'Copias Certificadas de Defunción',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                    _buildServiceTile(
                      context,
                      icon: Icons.fact_check,
                      label: 'Constancia de No Inhabilitación',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                    _buildServiceTile(
                      context,
                      icon: Icons.receipt_long,
                      label: 'Certificaciones de Pago',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                    _buildServiceTile(
                      context,
                      icon: Icons.assignment,
                      label: 'Constancia de Adeudo del Impuesto Predial',
                      onTap: () {
                        // Acción al hacer clic
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget para cada botón dentro de un recuadro blanco
  Widget _buildServiceTile(BuildContext context,
      {required IconData icon, required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 2, // Relación de aspecto 2:1 (ancho:alto)
        child: Card(
          color: Colors.white,
          elevation: 4, // Sombra en el recuadro
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: const Color(0xFF48040D), // Icono del mismo color que el AppBar
                ),
                const SizedBox(height: 10),
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF48040D), // Texto del mismo color que el AppBar
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget para encabezado grande con icono y funcionalidad de desplegable
  Widget _buildHeaderTile(BuildContext context,
      {required IconData icon, required String title, required List<Widget> children}) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ExpansionTile(
        leading: Icon(
          icon,
          size: 50,
          color: const Color(0xFF48040D), // Icono del encabezado
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Texto del encabezado en blanco
          ),
        ),
        backgroundColor: const Color(0xFF48040D), // Fondo oscuro para el encabezado
        collapsedBackgroundColor: const Color(0xFF48040D), // Fondo cuando está cerrado
        iconColor: Colors.white, // Color de la flecha cuando está abierto
        collapsedIconColor: Colors.white, // Color de la flecha cuando está cerrado
        childrenPadding: const EdgeInsets.symmetric(vertical: 10.0), // Padding para el contenido interno
        children: children,
      ),
    );
  }
}