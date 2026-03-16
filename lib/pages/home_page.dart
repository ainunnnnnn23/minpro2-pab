import 'package:flutter/material.dart';
import '../services/supabase_services.dart';
import 'form_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final SupabaseService service = SupabaseService();
  List<Map<String, dynamic>> pengeluaran = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {

    final data = await service.getPengeluaran();

    setState(() {
      pengeluaran = data;
    });
  }

  Future<void> hapusData(int id) async {

    await service.deletePengeluaran(id);
    loadData();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Dompet Nangis 💸"),
        centerTitle: true,
      ),

      body: pengeluaran.isEmpty
          ? const Center(
              child: Text("Belum ada pengeluaran"),
            )
          : ListView.builder(
              itemCount: pengeluaran.length,
              itemBuilder: (context, index) {

                final item = pengeluaran[index];

                return Card(
                  child: ListTile(

                    title: Text(item['judul']),

                    subtitle: Text(
                        "${item['kategori']} • Rp ${item['nominal']}"),

                    onTap: () async {

                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => FormPage(data: item),
                        ),
                      );

                      loadData();
                    },

                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => hapusData(item['id']),
                    ),
                  ),
                );
              },
            ),

      floatingActionButton: FloatingActionButton(

        child: const Icon(Icons.add),

        onPressed: () async {

          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const FormPage(),
            ),
          );

          loadData();
        },
      ),
    );
  }
}