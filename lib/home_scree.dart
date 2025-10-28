import 'package:flutter/material.dart';
import 'package:tugas5/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar produk
    final List<Map<String, dynamic>> products = [
      {
        "title": "Smartphone Xiomi 17 Pro MAX",
        "image": "assets/images/Xiaomi17pro.webp",
        "description":
            "Smartphone flagship yang sangat premium, Xiaomi 17 Pro Max hadir dengan spesifikasi kelas atas: layar utama LTPO AMOLED ~6,9″ resolusi “2K” (±1200×2608 piksel) dengan refresh rate hingga 120 Hz dan kecerahan puncak ~3.500 nits. "
            "Ditenagai oleh chipset Snapdragon 8 Elite Gen 5 (3 nm) yang sangat kencang, didampingi RAM hingga 16 GB dan penyimpanan internal hingga 1 TB. "
            "Sisi fotografi juga menonjol: tiga kamera belakang masing-masing 50 MP terdiri dari lensa utama, ultra wide, dan periskop telefoto 5× optical zoom. Kamera depan 50 MP siap untuk selfie. "
            "Baterai besar 7.500 mAh dengan dukungan pengisian cepat kabel 100 W dan nirkabel 50 W."
            "Fitur menarik lainnya: layar sekunder di bagian belakang bodi untuk melihat notifikasi / selfie dengan kamera belakang, sertifikasi tahan air/debu IP68.",
      },
      {
        "title": "Smartphone iPhone 17 Pro",
        "image": "assets/images/ip17.jpeg",
        "description":
            "iPhone 17 Pro hadir dengan bodi titanium yang kokoh namun ringan, serta chip A17 Pro yang dirancang khusus untuk performa tinggi dan efisiensi daya. "
            "Mengusung layar Super Retina XDR 6.1 inci dengan ProMotion 120Hz untuk tampilan yang lebih halus. "
            "Kamera utama 48MP mampu menghasilkan foto detail dan video 4K ProRes yang menakjubkan. "
            "Dengan port USB-C, Dynamic Island, dan sistem operasi iOS 17, perangkat ini menghadirkan pengalaman premium khas Apple.",
      },
      {
        "title": "Motor ZX 25R",
        "image": "assets/images/ZX.jpeg",
        "description":
            "Kawasaki ZX-25R adalah motor sport 250cc premium yang menawarkan performa tinggi dengan sensasi layaknya superbike. Ditenagai mesin 4-silinder segaris 249cc — satu-satunya di kelasnya — motor ini mampu berputar hingga 17.000 rpm, menghasilkan suara raungan khas yang agresif dan memacu adrenalin. "
            "Desainnya aerodinamis dan tajam, dilengkapi fitur modern seperti Quick Shifter, Riding Mode, dan Traction Control, menjadikannya unggul di jalan raya maupun sirkuit. "
            "ZX-25R adalah pilihan sempurna bagi pengendara yang menginginkan teknologi canggih, performa tinggi, dan gaya balap sejati dalam satu paket.",
      },
      {
        "title": "Mobil Supra Sport",
        "image": "assets/images/supra.jpeg",
        "description":
            "Toyota Supra adalah supercar legendaris asal Jepang yang dikenal karena kombinasi tenaga, kecepatan, dan handling presisi. "
            "Dibekali mesin turbocharged 3.0L inline-6, Supra mampu menghasilkan performa tinggi dengan akselerasi cepat dan suara mesin yang khas. "
            "Desainnya sporty dan aerodinamis, mencerminkan karakter mobil balap modern yang tetap elegan untuk penggunaan harian. Dikenal lewat reputasinya di dunia drift dan balap jalanan, Supra menjadi ikon otomotif yang melambangkan gaya, kekuatan, dan performa tanpa kompromi.",
      },
      {
        "title": "Lombo Sport car",
        "image": "assets/images/lambo.jpeg",
        "description":
            "Lamborghini adalah supercar mewah asal Italia yang terkenal dengan desain futuristik, performa ekstrem, dan suara mesin yang khas. "
            "Dibekali mesin V10 atau V12 bertenaga tinggi, mobil ini mampu melesat dari 0–100 km/jam hanya dalam hitungan detik. Setiap model Lamborghini — seperti Aventador, Huracán, dan Revuelto — memadukan teknologi canggih dengan estetika agresif yang menjadi ciri khasnya. "
            "Dikenal sebagai simbol kecepatan, kemewahan, dan prestise, Lamborghini bukan sekadar mobil, tetapi karya seni otomotif yang dirancang untuk menghadirkan sensasi berkendara luar biasa",
      },
      {
        "title": "Super Moto BMW S1000RR",
        "image": "assets/images/BMW.jpeg",
        "description":
            "BMW S1000RR adalah superbike berperforma tinggi yang dirancang untuk kecepatan, presisi, dan teknologi mutakhir"
            "Motor ini dibekali mesin 999cc inline-4 yang mampu menghasilkan tenaga lebih dari 200 hp, memberikan akselerasi luar biasa dan kecepatan puncak yang menakjubkan "
            "Desain aerodinamisnya yang agresif dipadukan dengan fitur-fitur canggih seperti Dynamic Traction Control (DTC), ABS Pro, dan riding mode yang dapat disesuaikan, membuatnya stabil di lintasan maupun jalan raya. "
            "Dengan kombinasi kekuatan, teknologi, dan gaya khas BMW, S1000RR menjadi salah satu superbike paling ikonik di dunia balap modern. ",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Produk Kami",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              title: Text(products[index]["title"]),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      productTitle: products[index]["title"],
                      productImage: products[index]["image"],
                      productDescription: products[index]["description"],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
