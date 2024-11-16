import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        CarCard(
          title: 'BMW X5',
          location: 'Sahloul, Sousse',
          price: '150DT per day',
          rating: 4.5,
          images: [
            'assets/images/car1.jpg',
            'assets/images/car2.jpg',
          ],
          colors: [Colors.blue, Colors.black, Colors.white],
        ),
        CarCard(
          title: 'Mercedes GLA',
          location: 'La Marsa, Tunis',
          price: '200DT per day',
          rating: 4.8,
          images: [
            'assets/images/car2.jpg',
            'assets/images/car2.jpg',
          ],
          colors: [Colors.red, Colors.grey, Colors.black],
        ),
      ],
    );
  }
}

class CarCard extends StatelessWidget {
  final String title;
  final String location;
  final String price;
  final double rating;
  final List<String> images;
  final List<Color> colors;

  CarCard({
    required this.title,
    required this.location,
    required this.price,
    required this.rating,
    required this.images,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      margin: EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 180,
            child: PageView(
              children: images
                  .map((imageUrl) => Image.network(imageUrl, fit: BoxFit.cover))
                  .toList(),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(location, style: TextStyle(color: Colors.grey)),
                SizedBox(height: 8),
                Text(price, style: TextStyle(fontSize: 16, color: Colors.blue)),
                Row(
                  children: List.generate(
                      rating.round(),
                      (index) =>
                          Icon(Icons.star, color: Colors.yellow, size: 20)),
                ),
                SizedBox(height: 8),
                Row(
                  children: colors.map((color) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
