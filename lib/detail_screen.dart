import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Detailscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset('assets/jokowi.jpg'),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.share,
                                size: 24,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              FavoriteButton()
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 32.0),
              child: Text('Jokowi: PPKM Darurat diperpanjang hingga 25 Juli',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.only(left: 32.0, right: 32.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/profile.png',
                    width: 36,
                    height: 36,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('John Brew', style: TextStyle(fontSize: 16)),
                  Spacer(),
                  Text('19 Jul, 2021', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                child: Text(
                    'Pemerintah memutuskan untuk melanjutkan pelaksanaan Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM) Darurat hingga tanggal 25 Juli Kebijakan ini dilakukan untuk menurunkan penularan Covid19 dan mengurangi kebutuhan masyarakat untuk pengobatan di Rumah Sakit, "Sehingga tidak membuat lumpuhnya rumah sakit lantaran over kapasitas pasien Covid19… serta agar layanan kesehatan untuk pasien dengan penyakit kritis lainnya tidak terganggu dan terancam nyawanya", paparnya Jokowi menjelaskan setelah dilaksanakan PPKM Darurat, terlihat dari data, penambahan kasus dan kepenuhan bed rumah sakit mengalami penurunan. ')),
            SizedBox(
              height: 24,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Write your Coment',
                labelText: 'Your Coment',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Komentar anda telah ditambahkan'),
                      );
                    });
              },
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
