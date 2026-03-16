import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {

  final supabase = Supabase.instance.client;

  Future<List<Map<String, dynamic>>> getPengeluaran() async {

    final response = await supabase
        .from('pengeluaran')
        .select()
        .order('id', ascending: false);

    return response;
  }

  Future<void> tambahPengeluaran(
      String judul,
      String kategori,
      int nominal) async {

    await supabase.from('pengeluaran').insert({
      'judul': judul,
      'kategori': kategori,
      'nominal': nominal,
    });
  }

  Future<void> updatePengeluaran(
      int id,
      String judul,
      String kategori,
      int nominal) async {

    await supabase
        .from('pengeluaran')
        .update({
          'judul': judul,
          'kategori': kategori,
          'nominal': nominal,
        })
        .eq('id', id);
  }

  Future<void> deletePengeluaran(int id) async {

    await supabase
        .from('pengeluaran')
        .delete()
        .eq('id', id);
  }
}