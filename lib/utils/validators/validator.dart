class CustomValidator {
  static String? errorJudulArtikel(String? value) {
    if (value == null || value.isEmpty) {
      return "Judul artikel tidak boleh kosong";
    }
    return null;
  }
}
