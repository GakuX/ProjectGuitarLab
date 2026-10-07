import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key, required this.currentRoute});

  final String currentRoute;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.red.shade100,
      elevation: 0,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: _NavButton(
                icon: Icons.house,
                isActive: currentRoute == '/accueil',
                onPressed: () {
                  context.go('/accueil');
                },
              ),
            ),
            Expanded(
              child: _NavButton(
                icon: Icons.lock_clock,
                isActive: currentRoute == '/routine',
                onPressed: () {
                  context.go('/routine');
                },
              ),
            ),
            Expanded(
              child: _NavButton(
                icon: Icons.lightbulb,
                isActive: currentRoute == '/idees',
                onPressed: () {
                  context.go('/idees');
                },
              ),
            ),
            Expanded(
              child: _NavButton(
                icon: Icons.bar_chart,
                isActive: currentRoute == '/progres',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  const _NavButton({
    required this.icon,
    required this.isActive,
    required this.onPressed,
  });

  final IconData icon;
  final bool isActive;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 80,
        height: 90,
        decoration: BoxDecoration(
          color: isActive ? Colors.red.shade700 : Colors.red,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: IconButton(
          icon: Icon(icon, size: 50),
          style: IconButton.styleFrom(foregroundColor: Colors.white),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
