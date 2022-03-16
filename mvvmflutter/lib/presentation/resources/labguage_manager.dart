enum LanguageType { ENGLISH, PORTUGUESE }

const String ARABIC = "pt";
const String ENGLISH = "en";

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.ENGLISH:
        return ENGLISH;
      case LanguageType.PORTUGUESE:
        return ARABIC;
    }
  }
}