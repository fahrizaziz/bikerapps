import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF242C3B,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Choose Your Bike',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 44,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(
                              0xFF34C8E8,
                            ),
                            Color(
                              0xFF4E4AF2,
                            ),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10.0,
                          ),
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/vector/search.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 240.0,
                margin: const EdgeInsets.all(
                  16.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    16.0,
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/image/bhome.png',
                    ),
                  ),
                  gradient: const LinearGradient(
                    colors: [
                      Color(
                        0xFF353F54,
                      ),
                      Color(
                        0xFF222834,
                      ),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      '30% Off',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0,
                        color: const Color(
                          0xFFFFFFFF,
                        ).withOpacity(
                          0.6,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Category(
                      text: 'All',
                      gradientColors: [
                        Color(
                          0xFF34C8E8,
                        ),
                        Color(
                          0xFF4E4AF2,
                        ),
                      ],
                    ),
                    Category(
                      iconPath: 'assets/vector/iconbic.svg',
                      gradientColors: [
                        Color(
                          0xFF353F54,
                        ),
                        Color(
                          0xFF222834,
                        ),
                      ],
                    ),
                    Category(
                      iconPath: 'assets/vector/iconro.svg',
                      gradientColors: [
                        Color(
                          0xFF353F54,
                        ),
                        Color(
                          0xFF222834,
                        ),
                      ],
                    ),
                    Category(
                      iconPath: 'assets/vector/iconmou.svg',
                      gradientColors: [
                        Color(
                          0xFF353F54,
                        ),
                        Color(
                          0xFF222834,
                        ),
                      ],
                    ),
                    Category(
                      iconPath: 'assets/vector/iconhel.svg',
                      gradientColors: [
                        Color(
                          0xFF353F54,
                        ),
                        Color(
                          0xFF222834,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView.builder(
                  itemCount: demoDataProduct.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        context.push(
                          '/detail',
                          extra: {
                            'category': demoDataProduct[index],
                          },
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 20.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            16.0,
                          ),
                          color: Colors.blueGrey[800],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(
                                    16.0,
                                  ),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    demoDataProduct[index]['image'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                demoDataProduct[index]['category'],
                                style: TextStyle(
                                  color: Colors.grey[400],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                demoDataProduct[index]['name'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '\$' + demoDataProduct[index]['price'],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(
          0xFF242C3B,
        ),
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bike),
            label: 'Bikes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> demoDataProduct = [
  {
    'category': 'Road Bike',
    'name': 'PEUGEOT - LR01',
    'price': '1,999.99',
    'image': 'assets/image/bigpro.png',
    'description':
        "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.",
  },
  {
    'category': 'Road Helmet',
    'name': 'SMITH - Trade',
    'price': '120',
    'image': 'assets/image/helmet.png',
    'description':
        "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.",
  }
];

class Category extends StatelessWidget {
  final String? text;
  final String? iconPath;
  final List<Color> gradientColors;
  const Category({
    super.key,
    this.text,
    this.iconPath,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: text != null
            ? Text(
                text!,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              )
            : SvgPicture.asset(
                iconPath!,
              ),
      ),
    );
  }
}
