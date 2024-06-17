import '../models/zutaten.dart';

abstract class DataBaseRepositoryZutaten {
  Map<int, Zutaten> ZutatenData = {}; // Typisierte Map für Zutaten-Daten

  void addZutat(int id, Zutaten);
  List<String> getAllZutatenTitles();
  void removeZutat(
      int id); // Prüfe, ob die ID als Key existiert, falls ja, lösche die Zutat.

  void printZutaten(int id);
}
