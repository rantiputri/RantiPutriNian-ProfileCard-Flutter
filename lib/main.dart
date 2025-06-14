import 'package:flutter/material.dart';

void main() {
  runApp(const CenteredProfileCardApp());
}

class CenteredProfileCardApp extends StatelessWidget {
  const CenteredProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const Scaffold(
        backgroundColor: Color(0xFFF2F6FF),
        body: Center(
          child: CenteredProfileCard(),
        ),
      ),
    );
  }
}

class CenteredProfileCard extends StatelessWidget {
  const CenteredProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.indigo.withOpacity(0.15),
            blurRadius: 18,
            offset: const Offset(0, 8),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Profile Image
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blueAccent, width: 3),
            ),
            child: const CircleAvatar(
              radius: 48,
              backgroundImage: AssetImage('assets/ranti.jpg'),
            ),
          ),

          const SizedBox(height: 16),

          // Name
          const Text(
            'Ranti Putri Nian',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3748),
            ),
          ),

          const SizedBox(height: 6),

          // Job Badge
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.indigo[50],
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Flutter Developer • UIR',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Color(0xFF3B82F6),
              ),
            ),
          ),

          const SizedBox(height: 14),

          // Bio
          const Text(
            'Mahasiswa Teknik Informatika di Universitas Islam Riau. '
            'Percaya bahwa teknologi bisa menyederhanakan hidup. Saat ini fokus membangun aplikasi mobile dan konten edukatif digital.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13.5,
              height: 1.5,
              color: Color(0xFF4A5568),
            ),
          ),

          const SizedBox(height: 20),

          // Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionButton(
                label: 'Follow',
                icon: Icons.person_add_alt_1,
                color: Colors.blue,
                onTap: () {},
              ),
              ActionButton(
                label: 'Message',
                icon: Icons.mail_outline,
                color: Colors.green,
                onTap: () {},
              ),
              ActionButton(
                label: 'Portfolio',
                icon: Icons.work_outline,
                color: Colors.purple,
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const ActionButton({
    super.key,
    required this.label,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 20),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
