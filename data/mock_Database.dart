import '../models/zutaten.dart';
import 'dataBase_repository.dart';

class MockDatabaseZutaten implements DataBaseRepositoryZutaten {
  Map<int, Zutaten> ZutatenData = {}; // Typisierte Map für Zutaten-Daten

  @override
  void addZutat(int id, Zutaten) {
    ZutatenData[id] = Zutaten; // Füge eine neue Zutat in Zutatendata Map ein.
  }

  @override
  List<String> getAllZutatenTitles() {
    List<String> alleZutatenTitles = []; // Liste für alle Zutaten-Titel

    ZutatenData.forEach((key, zutat) {
      // Füge alle Zutaten-Titel in die Liste und gebe sie aus
      alleZutatenTitles.add(zutat
          .name); // Angenommen, 'name' ist das Attribut für den Titel der Zutat
    });

    return alleZutatenTitles;
  }

  @override
  void removeZutat(int id) {
    // Prüfe, ob die ID als Key existiert, falls ja, lösche die Zutat.
    if (ZutatenData.containsKey(id)) {
      ZutatenData.remove(id);
    } else {
      print("Zutat mit ID $id nicht gefunden.");
    }
  }

  @override
  void printZutaten(int id) {
    if (ZutatenData.containsKey(id)) {
      print(
          "Name: ${ZutatenData[id]!.name}, Menge: ${ZutatenData[id]!.menge}, Einheit: ${ZutatenData[id]!.einheit}");
    } else {
      print("Zutat mit ID $id nicht gefunden.");
    }
  }
}
