import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter Demo de Layout';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [

              // 1 EL PANECILLO
              ImageSection(image: 'lib/images/panecillo.jpg'),
              TitleSection(
                name: 'El Panecillo',
                location: 'Quito',
                mapQuery: 'El Panecillo Quito Ecuador',
              ),
              ButtonSection(mapQuery: 'El Panecillo Quito Ecuador'),
              TextSection(
                description:
                    'El Panecillo es una de las elevaciones más emblemáticas de Quito y uno de los principales atractivos turísticos de la ciudad. En su cima se encuentra la Virgen de El Panecillo, una imponente estatua de aluminio que ofrece una vista panorámica de la capital ecuatoriana. Desde este lugar es posible apreciar el centro histórico, los barrios modernos y los paisajes andinos que rodean la ciudad.',
              ),

              // 2 AYANGUE
              ImageSection(image: 'lib/images/ayangue.jpg'),
              TitleSection(
                name: 'Ayangue',
                location: 'Santa Elena',
                mapQuery: 'Ayangue Santa Elena Ecuador',
              ),
              ButtonSection(mapQuery: 'Ayangue Santa Elena Ecuador'),
              TextSection(
                description:
                    'Ayangue es una hermosa comuna costera ubicada en la provincia de Santa Elena, Ecuador. Es conocida por sus aguas tranquilas y cristalinas, su ambiente familiar y sus excelentes playas para nadar y practicar actividades acuáticas. Gracias a su bahía protegida, es un destino ideal para el descanso, el turismo y la gastronomía basada en mariscos frescos. Además, es un punto popular para realizar buceo y snorkel, permitiendo a los visitantes explorar la riqueza marina de la zona.',
              ),

              // 3 SAN LUIS
              ImageSection(image: 'lib/images/sanluis.jpg'),
              TitleSection(
                name: 'Centro Comercial San Luis',
                location: 'Quito',
                mapQuery: 'San Luis Shopping Quito Ecuador',
              ),
              ButtonSection(mapQuery: 'San Luis Shopping Quito Ecuador'),
              TextSection(
                description:
                    'San Luis Shopping es uno de los centros comerciales más importantes del Valle de los Chillos, ubicado en el sector de San Rafael. Cuenta con una amplia variedad de tiendas, restaurantes, salas de cine, espacios de entretenimiento y servicios para toda la familia. Gracias a su ubicación estratégica y a su oferta comercial, se ha convertido en un punto de encuentro para residentes y visitantes de la zona.',
              ),

              // 4 MITAD DEL MUNDO
              ImageSection(image: 'lib/images/mitad.webp'),
              TitleSection(
                name: 'Mitad del Mundo',
                location: 'Quito',
                mapQuery: 'Mitad del Mundo Ecuador',
              ),
              ButtonSection(mapQuery: 'Mitad del Mundo Ecuador'),
              TextSection(
                description:
                    'La Mitad del Mundo es uno de los destinos turísticos más representativos del Ecuador. Este sitio marca el punto por donde pasa la línea ecuatorial que divide al planeta en los hemisferios norte y sur. Además de su emblemático monumento, ofrece espacios culturales, museos y actividades interactivas que permiten conocer la historia, la geografía y la diversidad del país. Es un lugar ideal para aprender sobre la ubicación geográfica del Ecuador y disfrutar de una experiencia educativa y turística única.',
              ),

              // 5 QUILOTOA
              ImageSection(image: 'lib/images/quilotoa.jpg'),
              TitleSection(
                name: 'Laguna Quilotoa',
                location: 'Cotopaxi',
                mapQuery: 'Laguna Quilotoa Ecuador',
              ),
              ButtonSection(mapQuery: 'Laguna Quilotoa Ecuador'),
              TextSection(
                description:
                    'La Laguna Quilotoa es un impresionante lago de origen volcánico ubicado dentro del cráter del volcán Quilotoa. Sus aguas de color turquesa y los paisajes andinos que la rodean la convierten en uno de los destinos naturales más visitados del Ecuador.',
              ),

              // 6 BAÑOS
              ImageSection(image: 'lib/images/banos.webp'),
              TitleSection(
                name: 'Baños de Agua Santa',
                location: 'Tungurahua',
                mapQuery: 'Baños de Agua Santa Ecuador',
              ),
              ButtonSection(mapQuery: 'Baños de Agua Santa Ecuador'),
              TextSection(
                description:
                    'Baños de Agua Santa es una ciudad turística famosa por sus cascadas, aguas termales y deportes de aventura. Rodeada de montañas y ubicada cerca del volcán Tungurahua, ofrece actividades como rafting, canopy y senderismo.',
              ),

              // 7 CUENCA CATEDRAL
              ImageSection(image: 'lib/images/catedral.webp'),
              TitleSection(
                name: 'Catedral Nueva de Cuenca',
                location: 'Cuenca',
                mapQuery: 'Catedral de la Inmaculada Concepción Cuenca Ecuador',
              ),
              ButtonSection(mapQuery: 'Catedral de la Inmaculada Concepción Cuenca Ecuador'),
              TextSection(
                description:
                    'La Catedral de la Inmaculada Concepción, conocida como Catedral Nueva, es uno de los símbolos arquitectónicos más importantes de Cuenca. Sus características cúpulas azules dominan el paisaje urbano y atraen a miles de visitantes cada año.',
              ),

              // 8 CAJAS
              ImageSection(image: 'lib/images/cajas.jpg'),
              TitleSection(
                name: 'Parque Nacional Cajas',
                location: 'Azuay',
                mapQuery: 'Parque Nacional Cajas Ecuador',
              ),
              ButtonSection(mapQuery: 'Parque Nacional Cajas Ecuador'),
              TextSection(
                description:
                    'El Parque Nacional Cajas es una reserva natural reconocida por sus más de 200 lagunas, páramos y gran biodiversidad. Es un destino ideal para realizar caminatas, observar aves y disfrutar de espectaculares paisajes andinos.',
              ),

              // 9 LOS FRAILES
              ImageSection(image: 'lib/images/frailes.jpg'),
              TitleSection(
                name: 'Playa Los Frailes',
                location: 'Manabí',
                mapQuery: 'Playa Los Frailes Ecuador',
              ),
              ButtonSection(mapQuery: 'Playa Los Frailes Ecuador'),
              TextSection(
                description:
                    'Playa Los Frailes es considerada una de las playas más hermosas del Ecuador. Ubicada dentro del Parque Nacional Machalilla, destaca por su arena blanca, aguas cristalinas y entorno natural protegido, ideal para el descanso y la fotografía.',
              ),

              // 10 MURCIELAGO
              ImageSection(image: 'lib/images/murcielago.jpeg'),
              TitleSection(
                name: 'Playa Murciélago',
                location: 'Manta',
                mapQuery: 'Playa Murciélago Manta Ecuador',
              ),
              ButtonSection(mapQuery: 'Playa Murciélago Manta Ecuador'),
              TextSection(
                description:
                    'Es la playa más famosa y concurrida de Manta. Tiene arena fina y aguas cálidas, y es muy visitada tanto por turistas como por locales. Destaca su malecón con restaurantes, bares y actividades, además de ser un lugar ideal para deportes como surf y paseos junto al mar',
              ),

            ],
          ),
        ),
      ),
    );
  }
}

//////////////////// GOOGLE MAPS ////////////////////

Future<void> openMap(String query) async {
  final Uri url = Uri.parse(
    "https://www.google.com/maps/search/?api=1&query=$query",
  );

  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw 'No se pudo abrir Google Maps';
  }
}

//////////////////// TITLE ////////////////////

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
    required this.mapQuery,
  });

  final String name;
  final String location;
  final String mapQuery;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(location,
                    style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          const FavoriteWidget(),
        ],
      ),
    );
  }
}

//////////////////// FAVORITE ////////////////////

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;
  int _favoriteCount = 50;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount--;
      } else {
        _favoriteCount++;
      }
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(
            _isFavorited ? Icons.star : Icons.star_border,
            color: Colors.red,
          ),
          onPressed: _toggleFavorite,
        ),
        SizedBox(width: 30, child: Text('$_favoriteCount')),
      ],
    );
  }
}

//////////////////// BUTTON SECTION ////////////////////

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key, required this.mapQuery});

  final String mapQuery;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonWithText(
          color: color,
          icon: Icons.call,
          label: 'CALL',
          onTap: () {},
        ),
        ButtonWithText(
          color: color,
          icon: Icons.near_me,
          label: 'ROUTE',
          onTap: () => openMap(mapQuery),
        ),
        ButtonWithText(
          color: color,
          icon: Icons.share,
          label: 'SHARE',
          onTap: () {},
        ),
      ],
    );
  }
}

//////////////////// BUTTON ////////////////////

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final Color color;
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(label),
          ),
        ],
      ),
    );
  }
}

//////////////////// TEXT ////////////////////

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description),
    );
  }
}

//////////////////// IMAGE ////////////////////

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}