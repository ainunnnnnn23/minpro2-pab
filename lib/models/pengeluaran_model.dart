class Pengeluaran {
  final int? id;
  final String judul;
  final String kategori;
  final int nominal;

  Pengeluaran({this.id, required this.judul, required this.kategori, required this.nominal});

  factory Pengeluaran.fromJson(Map<String, dynamic> json) {
    return Pengeluaran(
      id: json['id'],
      judul: json['judul'] ?? '',
      kategori: json['kategori'] ?? '',
      nominal: json['nominal'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {'judul': judul, 'kategori': kategori, 'nominal': nominal};
  }
}