import "models/zutaten.dart";
import "data/mock_Database.dart";
import "data/dataBase_repository.dart";

void main() {
  DataBaseRepositoryZutaten zutatenListeOne = MockDatabaseZutaten();
  Zutaten tomate = Zutaten(name: "tomate", menge: 1, einheit: "Kilogramm");
  Zutaten fleisch = Zutaten(name: "Rind", menge: 3.4, einheit: "Kilogramm");
  Zutaten obst = Zutaten(name: "Banane", menge: 5, einheit: "Stück");

  zutatenListeOne.addZutat(1, tomate);
  zutatenListeOne.addZutat(2, fleisch);
  zutatenListeOne.addZutat(3, obst);

  zutatenListeOne.removeZutat(4);

  print(zutatenListeOne.getAllZutatenTitles());
  zutatenListeOne.printZutaten(1);
  zutatenListeOne.printZutaten(2);
  zutatenListeOne.printZutaten(3);


}
