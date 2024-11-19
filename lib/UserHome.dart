import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login/Tarjeta.dart';
import 'package:login/denuncias.dart';
import 'package:login/pagos.dart';
import 'package:login/tramites.dart';
import 'package:login/transparecia.dart';
import 'package:login/UserProfileScreen.dart'; // Importa la pantalla de registro

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  // Lista de imágenes para el carrusel de noticias
  final List<String> noticias = [
    'assets/images/noticia1.jpeg',
    'assets/images/noticia2.jpg',
    'assets/images/noticia3.png',
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < noticias.length - 1) {
        setState(() {
          _currentPage++;
        });
      } else {
        setState(() {
          _currentPage = 0;
        });
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido'),
        backgroundColor: const Color(0xFF48040D),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 224, 224, 224), // Gris #E0E0E0 en formato ARGB
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF48040D),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navegar a la pantalla de registro cuando se hace clic en la imagen de perfil
                      Navigator.pop(context); // Cierra el drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const UserProfileScreen()),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 30, // Tamaño de la imagen
                      backgroundImage: AssetImage('assets/images/perfil.jpg'), // Cambia la ruta a tu imagen de perfil
                    ),
                  ),
                  const SizedBox(width: 16), // Espacio entre la imagen y el texto
                  const Text(
                    'Menú',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.assignment),
              title: const Text('Trámites y Servicios'),
              onTap: () {
                Navigator.pop(context); // Cierra el drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ServiciosTramites()),
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
                  MaterialPageRoute(builder: (context) => const LeyTransparencia()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Pagos en Línea'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PaymentScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Pagos pendientes'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PagosPendientes()),
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
                  MaterialPageRoute(builder: (context) => const QuejasDenunciasPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Marca de agua en el fondo
          Positioned.fill(
            child: Opacity(
              opacity: 0.1,
              child: Image.asset(
                'assets/images/FONDO.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Bienvenido al Sistema de Cobros',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF48040D),
                  ),
                ),
                const SizedBox(height: 20),
                // Carrusel de noticias
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: noticias.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            noticias[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                // Primera fila de tarjetas de información
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildInfoCard(
                      icon: Icons.chat_bubble,
                      count: '1860',
                      description: 'Atención Ciudadana Directa del Alcalde',
                      color: Colors.cyan,
                    ),
                    _buildInfoCard(
                      icon: Icons.request_page,
                      count: '3200',
                      description: 'Solicitudes atendidas por Despacho del Alcalde',
                      color: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Segunda fila de tarjetas de información
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildInfoCard(
                      icon: Icons.lightbulb_outline,
                      count: '650',
                      description: 'Reportes de Alumbrado Público atendidos',
                      color: Colors.blue,
                    ),
                    _buildInfoCard(
                      icon: Icons.directions_car,
                      count: '290',
                      description: 'Reportes de Baches atendidos',
                      color: Colors.purple,
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

  // Método para crear tarjetas de información reutilizables
  Widget _buildInfoCard({
    required IconData icon,
    required String count,
    required String description,
    required Color color,
  }) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
            size: 40,
          ),
          const SizedBox(height: 10),
          Text(
            count,
            style: TextStyle(
              color: color,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}