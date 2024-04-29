class FontFamilyHelper {
  FontFamilyHelper._();
  static const String arabicFont = 'Cairo';
  static const String englishFont = 'Poppins';
  static String getFontFamily() {
    const currentLocale = 'ar';
    return (currentLocale == 'ar' ? arabicFont : englishFont);
  }
}
