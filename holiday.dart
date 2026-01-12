import 'package:assignment_flutter/widget/first_destination.dart';
import 'package:assignment_flutter/widget/second_destination.dart';
import 'package:assignment_flutter/widget/third_destination.dart';
import 'package:flutter/material.dart';

class Destination {
  final String name;
  final String imageUrl;
  final String price;

  Destination({
    required this.name,
    required this.imageUrl,
    required this.price,
  });
}
class Holiday_in extends StatelessWidget {
  final List topDestinations = [
    Destination(
      name: 'Paris',
      imageUrl: 'https://www.oman.campusfrance.org/sites/pays/files/oman/styles/mobile_visuel_principal_page/public/AdobeStock_100751980.jpeg?itok=sTf7wl_Y',
      price: '\$1,200',
    ),
    Destination(
      name: 'Tokyo',
      imageUrl: 'https://loiclagarde.com/wp-content/uploads/2020/02/Japan-Cherry-Blossom-Loic-Lagarde-bestof-01.jpg',
      price: '\$1,500',
    ),
    Destination(
      name: 'Bali ',
      imageUrl: 'https://www.shutterstock.com/image-photo/balis-most-iconic-landmark-popular-260nw-2642558935.jpg',
      price: '\$800',
    ),
    Destination(
      name: 'Dubai',
      imageUrl: 'https://www.arabianbusiness.com/wp-content/uploads/sites/3/cloud/2021/11/09/rjinDWWi-dubaitourismskyline_1-768x512.jpg',
      price: '\$1,000',
    ),
  ];

  final List allDestinations = [
    Destination(
      name: 'Maldives',
      imageUrl: 'https://ichef.bbci.co.uk/ace/standard/976/cpsprodpb/3400/production/_128221331_gettyimages-1241714225.jpg',
      price: '\$2,500',
    ),

    Destination(
      name: 'Switzerland',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQloIUexkJRFI_Njolx76R4--pHin9oOXMNeA&s',
      price: '\$2,200',
    ),
    Destination(
      name: 'Hawaii',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS11GzrsJd3zxP8FdZhWwUhcWbwRS5FBnsZsg&s',
      price: '\$1,600',
    ),
    Destination(
      name: 'Iceland',
      imageUrl: 'https://media.istockphoto.com/id/967921290/photo/a-stunning-aurora-shape-like-phoenix-bird-appears-above-the-landscape-of-godafoss-water-fall.jpg?s=612x612&w=0&k=20&c=cFCYiJ7COcewwOTA2hGNcBLbwZDM_Vg7ZcIkEKp2dOo=',
      price: '\$1,400',
    ),
    Destination(
      name: 'Thailand',
      imageUrl: 'https://thumbs.dreamstime.com/b/view-famous-maya-bay-thailand-one-most-popular-beach-world-ko-phi-islands-people-278418776.jpg',
      price: '\$900',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top picture with search option
              TopOption(),
              SizedBox(height: 20),
              // 4 pictures with destination names
              _buildTopDestinationsSection(),
              SizedBox(height: 20),
              // Scrollable destinations with booking option
              _buildAllDestinationsSection(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildTopDestinationsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Top Destinations',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 400,
          width: 400,
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 40),
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: topDestinations.length,
            itemBuilder: (context, index) {
              return SecondDestination(destination: topDestinations[index]);
            },
          ),
        ),
      ],
    );
  }
  Widget _buildAllDestinationsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'All Trending Packages',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 400,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.vertical,
            itemCount: allDestinations.length,
            itemBuilder: (context, index) {
              return ThirdDestination(destination: allDestinations[index]);
            },
          ),
        ),
      ],
    );
  }
}








