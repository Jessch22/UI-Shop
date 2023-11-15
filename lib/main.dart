import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Godrej'),
        ),
        body: ListView(
          children: [
            Page1(),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          width: screenWidth * 0.9, // Lebar container mengikuti lebar layar
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color.fromARGB(255, 76, 76, 76)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(''),
              ),
              SizedBox(width: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Godrej',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '100 pengikut',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      print('ini tombol mengikuti');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      side: MaterialStateProperty.all(BorderSide(color: Colors.blue)),
                    ),
                    child: Text('Mengikuti', style: TextStyle(color: Colors.blue)),
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      print('ini tombol share');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    child: Icon(Icons.share, color: Colors.white),
                  ),
                ],
          ),
        ),
        SizedBox(height: 16.0),
        Text(
          'Belanja berdasarkan kategori',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildProductCard('https://images.tokopedia.net/img/cache/700/product-1/2020/5/31/2488628/2488628_3c18f41a-3f73-4ca1-90ab-46e8d32a76e0_380_380.jpg', context),
            _buildProductCard('https://down-id.img.susercontent.com/file/6bb20ce9fbae189b416cd7dde42a34a1', context),
            _buildProductCard('https://image1ws.indotrading.com/s3/productimages/webp/co209588/p830998/w425-h425/65fb08f7-4b89-48e8-bbf8-01f4df8ba1a0.jpg', context),
            _buildProductCard('https://static.sehatq.com/content/review/product/image/192820220417174941.jpeg', context),
          ],
        ),
        SizedBox(height: 16.0),
        Text(
          'Semua Produk',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                print('Tombol Promosi');
              },
              child: Text('Promosi'),
            ),
            SizedBox(width: 8.0),
            ElevatedButton(
              onPressed: () {
                print('Tombol Nama Produk');
              },
              child: Text('Nama Produk'),
            ),
            SizedBox(width: 8.0),
            ElevatedButton(
              onPressed: () {
                print('Tombol Terlaris');
              },
              child: Text('Terlaris'),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                _buildProductCardWithButton('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn345IB5ZrNSc_oYyIgWPQ8HzmoWNfjelspg&usqp=CAU', context),
                SizedBox(height: 8.0),
                _buildProductCardWithButton('https://images.tokopedia.net/img/cache/500-square/VqbcmM/2020/9/7/da21ef8c-ef8e-4fb1-85d9-db824dd07ac7.png', context),
              ],
            ),
            Column(
              children: [
                _buildProductCardWithButton('https://sukamurah.com/wp-content/uploads/2022/03/26b8b6e0-8e8f-493b-99cf-9568975ee135.jpg', context),
                SizedBox(height: 8.0),
                _buildProductCardWithButton('https://c.alfagift.id/product/1/1_A11280809220_20181108163714936_base.jpg', context),
              ],
            ),
            Column(
              children: [
                _buildProductCardWithButton('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5BBIhVmxKbfoVifk0Mj7aGUlokt78x_9lrg&usqp=CAU', context),
                SizedBox(height: 8.0),
                _buildProductCardWithButton('https://assets.klikindomaret.com/share/20112370_1.jpg', context),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProductCard(String imageUrl, BuildContext context) {
    return Image.network(imageUrl, width: 100.0, height: 100.0);
  }

  Widget _buildProductCardWithButton(String imageUrl, BuildContext context) {
    return Column(
      children: [
        _buildProductCard(imageUrl, context),
        SizedBox(height: 8.0),
        ElevatedButton(
          onPressed: () {
            print('Tombol +Keranjang');
          },
          child: Text('+Keranjang'),
        ),
      ],
    );
  }
}
