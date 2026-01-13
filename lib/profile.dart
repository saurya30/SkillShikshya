import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileApp extends StatefulWidget {
  const ProfileApp({super.key});

  @override
  State<ProfileApp> createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 104.0,
                backgroundColor: Color(0xFFAADA30),
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage(
                    'assets/images/profile_image.jpg',
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              Text('Saurya Khadka', style: GoogleFonts.praise(fontSize: 50)),
              Text(
                'Flutter Developer',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 24.0),
              Text(
                "A flutter developer builds sleek mobile apps for both iOS and Android using Google's Flutter Framework.",
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 22.0),
              Container(
                width: 260,
                height: 43,
                decoration: BoxDecoration(
                  color: Color(0xFF26235C),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Center(
                  child: Text(
                    'khadkasaurya02@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/GitHub.png'),
                  ),
                  const SizedBox(width: 8.0),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Instagram.png'),
                  ),
                  const SizedBox(width: 8.0),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/LinkedIn.png'),
                  ),
                  const SizedBox(width: 8.0),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Internet.png'),
                  ),
                  const SizedBox(width: 8.0),
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/profile_app_icon.png',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
