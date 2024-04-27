import 'package:flutter/material.dart';

class DigitalCard extends StatelessWidget {
  final String name = 'Wibie Mahardhika Adi';
  final String kerja = 'Mahasiswa';
  final String nomorTelpon = '0858 3263 0272';
  final String email = 'wibiemahardhika1@gmail.com';

  const DigitalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        centerTitle: true,
        title: const Text('Digital Card'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 600) {
              // Tampil secara horizontal jika lebar > 600 pixel
              return _buildHorizontalCard();
            } else {
              // Tampil secara vertikal jika lebar < 600 pixel
              return _buildVerticalCard();
            }
          },
        ),
      ),
    );
  }

  Widget _buildHorizontalCard() {
    return Container(
      width: 500,
      height: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),
          const SizedBox(width: 32),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                kerja,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.blue,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.phone,
                    size: 16,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    nomorTelpon,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(
                    Icons.email,
                    size: 16,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVerticalCard() {
    return Container(
      width: 300,
      height: 400,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),
          const SizedBox(height: 20),
          Text(
            name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            kerja,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 20,
            width: 150,
            child: Divider(
              color: Colors.blue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.phone,
                size: 16,
              ),
              const SizedBox(width: 10),
              Text(
                nomorTelpon,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.email,
                size: 16,
              ),
              const SizedBox(width: 10),
              Text(
                email,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
