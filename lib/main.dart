import 'package:flutter/material.dart';
import 'package:login/UserHome.dart';
import 'package:login/registro_screen.dart';
import 'forgot_password_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.cyan, // O cualquier otro color
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // Fondo gris
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: const Color(0xFF48040D), // Barra con color rojo oscuro
        titleTextStyle: TextStyle(
          color: Colors.grey[300], // Texto del título en gris
          fontSize: 20, // Tamaño del texto
          fontWeight: FontWeight.bold, // Peso de la fuente
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0), // Ajustar padding superior
                    child: Image.asset(
                      'assets/images/MUNICIPIO.png',
                      width: 250,
                      height: 250,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Correo Electrónico',
                      labelStyle:
                          TextStyle(color: Colors.grey), // Texto en gris
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email, color: Color(0xFF48040D)),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingresa tu correo';
                      }
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Ingresa un correo válido';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                      labelStyle:
                          TextStyle(color: Colors.grey), // Texto en gris
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock, color: Color(0xFF48040D)),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingresa tu contraseña';
                      }
                      if (value.length < 6) {
                        return 'La contraseña debe tener al menos 6 caracteres';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity, // Botón ancho completo
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Acciones cuando el formulario es válido
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Iniciando sesión...')),
                          );
                          // Navegar a la página principal después del login
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserHome()),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFF48040D), // Botón rojo oscuro
                        padding: const EdgeInsets.all(16),
                      ),
                      child: const Text(
                        'Iniciar Sesión',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey), // Texto del botón en gris
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
           MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),        );
        // Acciones cuando se haga clic en "¿Olvidaste tu contraseña?"
      },
      child: const Text(
        '¿Olvidaste tu contraseña?',
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),
      ),
    ),
    const SizedBox(width: 20),
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegistroScreen()),
        );
      },
      child: const Text(
        'Crear cuenta',
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),
      ),
    ),
  ],
),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}