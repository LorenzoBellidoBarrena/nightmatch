import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nightmatch/app/design/design_tokens.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DT.bgMain,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Imagen de fondo
          Image.asset("assets/images/night_bg.png", fit: BoxFit.cover),

          // Blur
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Container(color: Colors.black.withOpacity(0)),
          ),

          // Degradado
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  DT.bgMain.withOpacity(0.1),
                  DT.bgMain.withOpacity(0.6),
                  DT.bgMain.withOpacity(0.85),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              children: [
                const SizedBox(height: 90),

                // ICONO NEÓN
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: DT.accentNeon, width: 1.5),
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/glass_neon.svg",
                    width: 36,
                    height: 36,
                  ),
                ),

                const Spacer(),

                // TITULOS
                Text(
                  "Your night",
                  style: DT.textH1Bold.copyWith(fontSize: 34),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "starts here",
                  style: DT.textDisplayNeon.copyWith(fontSize: 34),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: DT.s4),

                // DESCRIPCIÓN
                Text(
                  "Connect with people heading to the same clubs tonight.",
                  style: DT.textBodyMain.copyWith(color: DT.textSecondary),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: DT.s6),

                // Botón "Create Account"
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: DT.accentNeon,
                      foregroundColor: Colors.black,
                      shadowColor: DT.accentGlow,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Botón "Log in"
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white70, width: 1.4),
                      foregroundColor: Colors.white70,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: DT.s6),

                Text.rich(
                  TextSpan(
                    text: "By continuing, you agree to our ",
                    style: DT.textCaption,
                    children: [
                      TextSpan(
                        text: "Terms of Service",
                        style: DT.textCaption.copyWith(color: DT.textPrimary),
                      ),
                      const TextSpan(text: " & "),
                      TextSpan(
                        text: "Privacy Policy",
                        style: DT.textCaption.copyWith(color: DT.textPrimary),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
