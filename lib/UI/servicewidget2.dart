import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceWidget2 extends StatefulWidget {
  const ServiceWidget2({super.key});

  @override
  State<ServiceWidget2> createState() => _ServiceWidget2State();
}

class _ServiceWidget2State extends State<ServiceWidget2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: const [
          BuildCard(
            cityName: 'New delhi',
            url:
                'https://images.pexels.com/photos/13819269/pexels-photo-13819269.jpeg',
          ),
          SizedBox(
            width: 10,
          ),
          BuildCard(
            cityName: 'Bengaluru',
            url:
                'https://images.pexels.com/photos/15164130/pexels-photo-15164130.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          ),
          SizedBox(
            width: 10,
          ),
          BuildCard(
            cityName: 'Goa',
            url:
                'https://images.pexels.com/photos/15610234/pexels-photo-15610234.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          ),
          SizedBox(
            width: 10,
          ),
          BuildCard(
            cityName: 'Agra',
            url:
                'https://images.pexels.com/photos/13576482/pexels-photo-13576482.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

class BuildCard extends StatelessWidget {
  const BuildCard({super.key, required this.url, required this.cityName});
  final String url;
  final String cityName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: 110,
      child: Center(
          child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              url,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topRight,
              child: Text(
                cityName,
                style: GoogleFonts.getFont(
                  "Mitr",
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
