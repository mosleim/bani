import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        child: Container(
          margin: EdgeInsets.all(7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Pertemuan wali di ganding",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.calendar_today,
                    size: 12,
                  ),
                  Text(
                    "   Selasa, 3 November 2019",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  ClipRRect(
                    child: Image.asset(
                      "assets/images/pp.jpeg",
                      height: 100,
                      width: 85,
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 220,
                    child: Text(
                      "Saya akan membedah buku di Kanca Konah Kopi pada waktu so"
                      "re dan dilanjutkan mempromosikannya di Ma'had Al-Jami'iah"
                      " IAIN Jember pada malam Minggu.Saya telah mengirim bahan b"
                      "erupa poin yang bertenaga (power point).",
                      softWrap: true,
                    ),
                  ),
                ],
              ),
              Divider(),
              Center(child: Text("Baca >>"))
            ],
          ),
        ),
      ),
    );
  }
}
