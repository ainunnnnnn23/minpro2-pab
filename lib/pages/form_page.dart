import 'package:flutter/material.dart';
import '../services/supabase_services.dart';

class FormPage extends StatefulWidget {

  final Map<String, dynamic>? data;

  const FormPage({super.key, this.data});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  final judulController = TextEditingController();
  final kategoriController = TextEditingController();
  final nominalController = TextEditingController();

  final SupabaseService service = SupabaseService();

  @override
  void initState() {
    super.initState();

    if (widget.data != null) {
      judulController.text = widget.data!['judul'];
      kategoriController.text = widget.data!['kategori'];
      nominalController.text =
          widget.data!['nominal'].toString();
    }
  }

  Future<void> simpanData() async {

    final judul = judulController.text;
    final kategori = kategoriController.text;
    final nominal =
        int.tryParse(nominalController.text) ?? 0;

    if (widget.data == null) {

      await service.tambahPengeluaran(
        judul,
        kategori,
        nominal,
      );

    } else {

      await service.updatePengeluaran(
        widget.data!['id'],
        judul,
        kategori,
        nominal,
      );
    }

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(
          widget.data == null
              ? "Tambah Pengeluaran"
              : "Edit Pengeluaran",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            TextField(
              controller: judulController,
              decoration: const InputDecoration(
                labelText: "Judul",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: kategoriController,
              decoration: const InputDecoration(
                labelText: "Kategori",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: nominalController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Nominal",
                prefixText: "Rp ",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: simpanData,
                child: const Text("Simpan"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}