import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hupest/app/routes/app_pages.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late final AnimationController _logoController;
  late final Animation<double> _logoOpacity;

  bool showSubtitle = false;
  bool showButtons = false;

  @override
  void initState() {
    super.initState();

    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _logoOpacity = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _logoController, curve: Curves.easeInOut),
    );
    _logoController.forward();

    Future.delayed(const Duration(seconds: 3), () {
      setState(() => showSubtitle = true);
    });

    Future.delayed(const Duration(seconds: 5), () {
      setState(() => showButtons = true);
    });
  }

  @override
  void dispose() {
    _logoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E5DD),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FadeTransition(
              opacity: _logoOpacity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Hupe',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6C9056),
                    ),
                  ),
                  Text(
                    'st',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            AnimatedOpacity(
              opacity: showSubtitle ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 600),
              child: const Text(
                'Informasi Nilai Akademik Siswa',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ),

            const SizedBox(height: 100),

            AnimatedOpacity(
              opacity: showButtons ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 800),
              child: Column(
                children: [
                  const Text(
                    'Masuk sebagai',
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 10), // Perbesar jarak antar teks
                  _buildLoginButton('SISWA', Routes.SISWA, const Color.fromARGB(255, 0, 0, 0)),
                  const SizedBox(height: 11),
                  _buildLoginButton('GURU', Routes.GURU, const Color.fromARGB(255, 0, 0, 0)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton(String label, String route, Color color) {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return const Color(0xFF6C9056); // Warna hijau saat hover
              }
              return color; // Warna default
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return Colors.white; // Warna teks saat hover
              }
              return Colors.white; // Warna teks default
            },
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          ),
          elevation: MaterialStateProperty.resolveWith<double>(
            (states) => states.contains(MaterialState.hovered) ? 8 : 4,
          ),
          overlayColor: MaterialStateProperty.all(Colors.white.withOpacity(0.1)), // Efek ripple saat diklik
          shadowColor: MaterialStateProperty.resolveWith<Color>(
            (states) => states.contains(MaterialState.hovered) 
                ? const Color(0xFF6C9056).withOpacity(0.6) 
                : Colors.black.withOpacity(0.3),
          ),
        ),
        onPressed: () => Get.toNamed(route),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white, 
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
  }}