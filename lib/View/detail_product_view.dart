import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailProductView extends StatelessWidget {
  final Map<String, dynamic> category;
  const DetailProductView({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D2733),
      body: Stack(
        children: [
          Column(
            children: [
              // Header Section
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0.w,
                  vertical: 40.0.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Back Button
                    GestureDetector(
                      onTap: () {
                        context.go('/home');
                      },
                      child: Container(
                        height: 44.0.h,
                        width: 44.0.h,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF34C8E8),
                              Color(0xFF4E4AF2),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10.0.r,
                            ),
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      category['name'],
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 44.0.w,
                    ), // Placeholder for spacing
                  ],
                ),
              ),
              // Bike Image Section
              Image.asset(
                category['image'], // Bike image asset
                fit: BoxFit.cover,
                height: 200.0.h,
              ),
              const Spacer(),
              // Description and Specification Tabs
              Container(
                padding: const EdgeInsets.all(
                  16.0,
                ),
                decoration: BoxDecoration(
                  color: const Color(
                    0xFF2B3648,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      30.0.r,
                    ),
                    topRight: Radius.circular(
                      30.0.r,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildTabButton('Description', isSelected: true),
                        _buildTabButton('Specification', isSelected: false),
                      ],
                    ),
                    SizedBox(
                      height: 16.0.h,
                    ),
                    Text(
                      category['name'],
                      style: GoogleFonts.poppins(
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Text(
                      category['description'],
                      style: GoogleFonts.poppins(
                        color: Colors.grey[400],
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    // Price and Add to Cart Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$' + category['price'],
                          style: GoogleFonts.poppins(
                            color: const Color(
                              0xFF34C8E8,
                            ),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 32.0.h,
                            vertical: 12.0.h,
                          ),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFF34C8E8),
                                Color(0xFF4E4AF2),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(
                              30.0.r,
                            ),
                          ),
                          child: Text(
                            'Add to Cart',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTabButton(String text, {required bool isSelected}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8.0.w,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 8.0.h,
          horizontal: 20.0.w,
        ),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF2D3C55) : const Color(0xFF222834),
          borderRadius: BorderRadius.circular(
            20.0.r,
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            color: isSelected ? Colors.white : Colors.grey[400],
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
