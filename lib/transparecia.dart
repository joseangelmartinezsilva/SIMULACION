import 'package:flutter/material.dart';

class LeyTransparencia extends StatelessWidget {
  const LeyTransparencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ley de Transparencia'),
        backgroundColor: const Color(0xFF48040D),
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 224, 224, 224),
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LEY DE TRANSPARENCIA Y ACCESO A LA INFORMACIÓN PÚBLICA DEL ESTADO DE TLAXCALA',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16), // Espacio entre líneas
              Text(
                'ARTÍCULO 1',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8), // Espacio entre líneas
              Text(
                'Artículo 1. La presente Ley es de orden público y de observancia general en el territorio del Estado de Tlaxcala, y tiene por objeto garantizar el derecho humano de acceso a la información en posesión de cualquier autoridad, entidad, órgano y organismo de los poderes Legislativo, Ejecutivo y Judicial, órganos autónomos, partidos políticos, fideicomisos y fondos públicos, así como de cualquier persona física, moral o sindicato que reciba y ejerza recursos públicos o realice actos de autoridad en el Estado y sus municipios.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                'ARTÍCULO 3',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Artículo 3. Para los efectos de la presente Ley se entenderá por:',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'I. Ajustes Razonables: Modificaciones y adaptaciones necesarias y adecuadas que no impongan una carga desproporcionada o indebida, cuando se requieran en un caso particular, para garantizar a las personas con discapacidad el goce o ejercicio, en igualdad de condiciones, de los derechos humanos;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'II. Áreas: Instancias que cuentan o puedan contar con la información. Tratándose del sector público, serán aquellas que estén previstas en el reglamento interior, estatuto orgánico respectivo o equivalentes;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'III. Comisionados: Los servidores públicos integrantes del Pleno del Instituto;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'IV. Comité de Transparencia: Instancia a la que hace referencia el artículo 40 de la presente Ley;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'V. Consejo General: Órgano máximo de gobierno interno del Instituto, encargado de la organización e instrumentación de los programas y acciones de la misma;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'VI. Consejo Nacional: Consejo del Sistema Nacional de Transparencia, Acceso a la Información y Protección de Datos Personales;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'VII. Datos abiertos: Los datos digitales de carácter público que son accesibles en línea que pueden ser usados, reutilizados y redistribuidos por cualquier interesado y que tienen las siguientes características:',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'a) Accesibles: Los datos están disponibles para la gama más amplia de usuarios, para cualquier propósito;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'b) Integrales: Contienen el tema que describen a detalle y con los metadatos necesarios;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'c) Gratuitos: Se obtienen sin entregar a cambio contraprestación alguna;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'd) No discriminatorios: Los datos están disponibles para cualquier persona, sin necesidad de registro;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'e) Oportunos: Son actualizados, periódicamente, conforme se generen;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'f) Permanentes: Se conservan en el tiempo, para lo cual, las versiones históricas relevantes para uso público se mantendrán disponibles con identificadores adecuados al efecto;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'g) Primarios: Provienen de la fuente de origen con el máximo nivel de desagregación posible;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'h) Legibles por máquinas: Deberán estar estructurados, total o parcialmente, para ser procesados e interpretados por equipos electrónicos de manera automática;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'i) En formatos abiertos: Los datos estarán disponibles con el conjunto de características técnicas y de presentación que corresponden a la estructura lógica usada para almacenar datos en un archivo digital, cuyas especificaciones técnicas están disponibles públicamente, que no suponen una dificultad de acceso y que su aplicación y reproducción no estén condicionadas a contraprestación alguna;',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                'j) De libre uso: Citan la fuente de origen como único requerimiento para ser utilizados libremente;',
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: LeyTransparencia(),
  ));
}
