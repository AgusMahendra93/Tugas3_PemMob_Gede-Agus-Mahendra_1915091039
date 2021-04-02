import 'package:flutter/material.dart';
import 'package:tugas1/models/penjualan.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class InputPenjualan extends StatefulWidget {
  final Penjualan penjualan;
  InputPenjualan(this.penjualan);
  @override
  _InputPenjualanState createState() => _InputPenjualanState(this.penjualan);
}

class _InputPenjualanState extends State<InputPenjualan> {
  Penjualan penjualan;
  _InputPenjualanState(this.penjualan);
  TextEditingController namaController = TextEditingController();
  TextEditingController keteranganController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController tanggalController = TextEditingController();
  final format = DateFormat('yyyy-MM-dd');
  @override
  Widget build(BuildContext context) {
    if (penjualan != null) {
      namaController.text = penjualan.nama;
      keteranganController.text = penjualan.keterangan;
      tanggalController.text = penjualan.tanggal;
      jumlahController.text = penjualan.jumlah;
    }
    return Scaffold(
      appBar: AppBar(
        title: penjualan == null
            ? Text("Transaksi Baru")
            : Text("Update Transaksi"),
        leading: Icon(Icons.keyboard_arrow_left),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15, left: 10, right: 10),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: namaController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Nama",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: jumlahController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Harga",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: keteranganController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Keterangan",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  DateTimeField(
                    controller: tanggalController,
                    format: format,
                    onShowPicker: (context, currentValue) {
                      return showDatePicker(
                          context: context,
                          initialDate: currentValue ?? DateTime.now(),
                          firstDate: DateTime(2021),
                          lastDate: DateTime(2040));
                    },
                    decoration: InputDecoration(
                        labelText: "Tanggal",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          child: Text(
                            "Simpan",
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            if (penjualan == null) {
                              penjualan = Penjualan(
                                  namaController.text,
                                  keteranganController.text,
                                  tanggalController.text,
                                  jumlahController.text);
                            } else {
                              penjualan.nama = namaController.text;
                              penjualan.keterangan = keteranganController.text;
                              penjualan.tanggal = tanggalController.text;
                              penjualan.jumlah = jumlahController.text;
                            }
                            Navigator.pop(context, penjualan);
                          })),
                  Container(
                    width: 5,
                  ),
                  Expanded(
                      child: RaisedButton(
                    color: Theme.of(context).primaryColorDark,
                    textColor: Theme.of(context).primaryColorLight,
                    child: Text(
                      "Batal",
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
