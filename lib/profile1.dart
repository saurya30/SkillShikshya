import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [Icon(Icons.edit)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage(
                    'assets/images/profile_image.jpg',
                  ),
                ),
              ),
              SizedBox(height: 46),
              ListTile(
                leading: Icon(Icons.contact_page, size: 40),
                title: Text(
                  'Name',
                  style: GoogleFonts.mochiyPopOne(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                        'Saurya Khadka',
                        style: GoogleFonts.inter(fontSize: 20),
                      ),
              ),
              ListTile(
                leading: Icon(Icons.contact_page, size: 40),
                title: Text(
                  'Name',
                  style: GoogleFonts.mochiyPopOne(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                        'Saurya Khadka',
                        style: GoogleFonts.inter(fontSize: 20),
                      ),
              ),
              ListTile(
                leading: Icon(Icons.contact_page, size: 40),
                title: Text(
                  'Name',
                  style: GoogleFonts.mochiyPopOne(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                        'Saurya Khadka',
                        style: GoogleFonts.inter(fontSize: 20),
                      ),
              ),
              ListTile(
                leading: Icon(Icons.contact_page, size: 40),
                title: Text(
                  'Name',
                  style: GoogleFonts.mochiyPopOne(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                        'Saurya Khadka',
                        style: GoogleFonts.inter(fontSize: 20),
                      ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.settings, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.list_alt, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.person, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
