import 'package:animate_do/animate_do.dart';
import 'package:book_swap/gen/assets.gen.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({
    super.key,
    this.loadedInMain = false,
    this.appVersion,
    this.error,
  });

  final bool loadedInMain;
  final String? appVersion;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FadeIn(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.images.background.provider(),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withValues(alpha: 0.6),
                BlendMode.darken,
              ),
            ),
          ),
          child: Center(
            child: SizedBox(
              height: 300,
              child: Stack(
                children: [
                  ClipRect(
                    child: Align(
                      alignment: Alignment.topCenter,
                      heightFactor: 0.6,
                      child: Assets.images.logoNoBackground.image(
                        width: 300,
                        height: 300,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 170),
                      child: Column(
                        children: [
                          Text(
                            'BOOK SWAP',
                            style: GoogleFonts.montserrat(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          AS.hGap8,
                          Text(
                            'Swap Books, Share Stories',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
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
