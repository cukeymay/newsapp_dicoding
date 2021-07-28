import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Detailscreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset('assets/jokowi2.png'),
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
                    'Jakarta, CNBC Indonesia - Presiden Joko Widodo (Jokowi) memberikan pernyataan resmi perihal perkembangan terkini PPKM Level 4 dari Istana Merdeka, Kompleks Istana Kepresidenan, Jakarta, Minggu (25/7/2021). Dalam kesempatan itu, Jokowi memutuskan melanjutkan penerapan PPKM Level 4 yang berakhir hari ini. "Saya memutuskan untuk melanjutkan penerapan PPKM level 4 dari tanggal 26 Juli sampai dengan 2 Agustus 2021," katanya. Menurut Jokowi, sudah ada tren perbaikan dari sisi laju penambahan kasus, BOR, hingga positivity rate. Namun demikian, semua pihak harus tetap berhati-hati menyikapi tren perbaikan tersebut.')),
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
