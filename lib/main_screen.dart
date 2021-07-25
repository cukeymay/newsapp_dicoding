import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'detail_screen.dart';
import 'detail_screen2.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDF5FF),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text(
                'Breaking News',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 330,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Container(
                      width: 350,
                      height: 325,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detailscreen2();
                          }));
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/jokowi2.png'),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                                'Resmi! Jokowi Perpanjang PPKM Level 4 Hingga 2 Agustus 2021',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18)),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: Image.asset(
                                    'assets/profile.png',
                                    width: 36,
                                    height: 36,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('John Brew',
                                    style: TextStyle(fontSize: 16)),
                                SizedBox(
                                  width: 132,
                                ),
                                Text('19 Jul, 2021',
                                    style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Container(
                      width: 350,
                      height: 325,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detailscreen();
                          }));
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/palestina.jpeg'),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                                'Semarak Hari Raya Idul Adha di Palestina 1442 H',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18)),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: Image.asset(
                                    'assets/profile.png',
                                    width: 36,
                                    height: 36,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('John Brew',
                                    style: TextStyle(fontSize: 16)),
                                SizedBox(
                                  width: 132,
                                ),
                                Text('19 Jul, 2021',
                                    style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Container(
                      width: 350,
                      height: 325,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detailscreen();
                          }));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/perawat.jpeg',
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                                'UPDATE 24 Juli: Kasus Covid-19 Jakarta Bertambah 8.360',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18)),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: Image.asset(
                                    'assets/profile.png',
                                    width: 36,
                                    height: 36,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('John Brew',
                                    style: TextStyle(fontSize: 16)),
                                SizedBox(
                                  width: 132,
                                ),
                                Text('19 Jul, 2021',
                                    style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 24),
              child: Text(
                'Favorite',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
            ),
            SizedBox(height: 24),
            Container(
              height: 330,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Container(
                      width: 350,
                      height: 325,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detailscreen();
                          }));
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/jokowi.jpg'),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                                'Jokowi: PPKM Darurat diperpanjang hingga 25 Juli',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18)),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: Image.asset(
                                    'assets/profile.png',
                                    width: 36,
                                    height: 36,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('John Brew',
                                    style: TextStyle(fontSize: 16)),
                                SizedBox(
                                  width: 132,
                                ),
                                Text('19 Jul, 2021',
                                    style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Container(
                      width: 350,
                      height: 325,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detailscreen();
                          }));
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/basketball.png'),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                                'Prancis Kejutkan Amerika Serikat Di Laga Perdana Olimpiade Tokyo',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18)),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: Image.asset(
                                    'assets/profile.png',
                                    width: 36,
                                    height: 36,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('John Brew',
                                    style: TextStyle(fontSize: 16)),
                                SizedBox(
                                  width: 132,
                                ),
                                Text('19 Jul, 2021',
                                    style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Container(
                      width: 350,
                      height: 325,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detailscreen();
                          }));
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/luhut.png'),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                                'Luhut: Mal Bisa Beroperasi, Kapasitas 25% & Buka Hingga 17.00',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18)),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: Image.asset(
                                    'assets/profile.png',
                                    width: 36,
                                    height: 36,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('John Brew',
                                    style: TextStyle(fontSize: 16)),
                                SizedBox(
                                  width: 132,
                                ),
                                Text('19 Jul, 2021',
                                    style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined),
            label: "Catefory",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "account"),
        ],
      ),
    );
  }
}
