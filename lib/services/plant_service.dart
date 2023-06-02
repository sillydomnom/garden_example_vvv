import '../models/plant_model.dart';

class PlantService {
  List<Plant> _plants = [];
  bool isInit = false;

  List<Plant> get plants => _plants;

  void init() {
    _plants = [
      Plant(name: 'Rose', isWatered: false),
      Plant(name: 'Cactus', isWatered: true),
    ];
    isInit = true;
  }
}
